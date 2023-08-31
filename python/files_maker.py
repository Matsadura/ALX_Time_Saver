import os
import re
import quopri
import html
from prompt_toolkit import prompt
from prompt_toolkit.document import Document
from prompt_toolkit.completion import Completer, Completion, PathCompleter

# Custom Tilde Expantion

class TildeExpandingPathCompleter(Completer):
    def get_completions(self, document, complete_event):
        expanded_text = os.path.expanduser(document.text_before_cursor)
        for completion in PathCompleter().get_completions(Document(expanded_text, len(expanded_text)), complete_event):
            yield Completion(completion.text, start_position=document.cursor_position - len(document.text_before_cursor))

# Path to HTML Project file

file_name = prompt('Please enter the file name: ', completer=TildeExpandingPathCompleter())
file_name = os.path.expanduser(file_name)

if not os.path.isfile(file_name):
    print(f"Error: The file {file_name} does not exist.")
else:
    with open(file_name, "r") as file:
        html_content = file.read()

    # Test Files Maker

    codes_1 = re.findall(r'<pre><code>(.*?)</code></pre>', html_content, re.DOTALL)
    
    # Path to destination 

    directory = prompt('Please enter the directory to save the files: ', completer=TildeExpandingPathCompleter())
    directory = os.path.expanduser(directory)
    os.chdir(directory)

    created_files = []
    for code in codes_1:
        code_parts = re.findall(r'(#include.*})', code, re.DOTALL | re.MULTILINE)
        file_name = re.search(r'(\d+)-main\.c', code)
        if file_name:
            file_name = file_name.group(1) + "-main.c"
        else:
            continue

        for part in code_parts:
            decoded_part = quopri.decodestring(part).decode()
            output_file = file_name
            with open(output_file, "w") as file:
                file.write(html.unescape(decoded_part))

            if os.path.isfile(output_file):
                created_files.append(output_file)
            else:
                print(f"Error: The file {output_file} was not found.")




    # Files Maker

    codes_2 = re.findall(r'File: <code>(.*?)</code>', html_content)

    for code in codes_2:
        output_file = code
        with open(output_file, "w") as file:
            pass

        if os.path.isfile(output_file):
            created_files.append(output_file)
        else:
            print(f"Error: The file {output_file} was not found.")

    if created_files:
        print(f"The files {', '.join(created_files)} have been created in the directory {os.getcwd()}")


    # Header Maker

    prototypes = re.findall(r'Prototype: <code>(.*?)</code>', html_content)

    output_file = "main.h"
    with open(output_file, "a") as file:
        for prototype in prototypes:
            file.write(prototype + "\n")

    if os.path.isfile(output_file):
        print(f"The prototypes have been appended to '{output_file}' in the directory {os.getcwd()}")
    else:
        print(f"Error: The file {output_file} was not found.")
