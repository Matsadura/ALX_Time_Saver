import re
import os
from prompt_toolkit import prompt
from prompt_toolkit.completion import PathCompleter

file_name = prompt('Please enter the file name: ', completer=PathCompleter())

if not os.path.isfile(file_name):
    print(f"Error: The file {file_name} does not exist.")
else:
    with open(file_name, "r") as file:
        html_content = file.read()

    prototypes = re.findall(r'Prototype: <code>(.*?)</code>', html_content)

    output_file = "main.h"
    with open(output_file, "a") as file:
        for prototype in prototypes:
            file.write(prototype + "\n")

    if os.path.isfile(output_file):
        print(f"The prototypes have been appended to {output_file} in the directory {os.getcwd()}")
    else:
        print(f"Error: The file {output_file} was not found.")

