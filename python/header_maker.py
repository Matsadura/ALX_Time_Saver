import os
from prompt_toolkit import prompt
from prompt_toolkit.document import Document
from prompt_toolkit.completion import Completer, Completion, PathCompleter
import re

class TildeExpandingPathCompleter(Completer):
    def get_completions(self, document, complete_event):
        expanded_text = os.path.expanduser(document.text_before_cursor)
        for completion in PathCompleter().get_completions(Document(expanded_text, len(expanded_text)), complete_event):
            yield Completion(completion.text, start_position=document.cursor_position - len(document.text_before_cursor))

file_name = prompt('Please enter the file name: ', completer=TildeExpandingPathCompleter())

if not os.path.isfile(file_name):
    print(f"Error: The file {file_name} does not exist.")
else:
    with open(file_name, "r") as file:
        html_content = file.read()

    prototypes = re.findall(r'Prototype: <code>(.*?)</code>', html_content)

    directory = prompt('Please enter the directory to save the file: ', completer=TildeExpandingPathCompleter())
    directory = os.path.expanduser(directory)
    os.chdir(directory)

    output_file = "main.h"
    with open(output_file, "a") as file:
        for prototype in prototypes:
            file.write(prototype + "\n")

    if os.path.isfile(output_file):
        print(f"The prototypes have been appended to '{output_file}' in the directory {os.getcwd()}")
    else:
        print(f"Error: The file {output_file} was not found.")

