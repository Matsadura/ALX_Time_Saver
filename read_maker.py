#!/usr/bin/python3

import requests
import base64
import re
from colorama import Fore, Style
from prompt_toolkit import prompt
from prompt_toolkit.completion import Completer, Completion

# Username + Token
username = 'IamZidane'  # Replace with your GitHub username
token = 'token_here'  # Replace with your GitHub Token
repo_owner = 'IamZidane' #Replace with your Github username

# Repositories
class RepoCompleter(Completer):
    def get_completions(self, document, complete_event):
        response = requests.get('https://api.github.com/user/repos', auth=(username, token))

        if response.status_code == 200:
            repos_json = response.json()

            for repo in repos_json:
                if repo['name'].startswith(document.text):
                    yield Completion(repo['name'], start_position=-len(document.text))

# Subdirectories
class SubDirCompleter(Completer):
    def get_completions(self, document, complete_event):
        response = requests.get(f'https://api.github.com/repos/{username}/{repo_name}/contents/', auth=(username, token))

        if response.status_code == 200:
            contents_json = response.json()

            for item in contents_json:
                if item['type'] == 'dir' and item['name'].startswith(document.text):
                    yield Completion(item['name'], start_position=-len(document.text))


# Prompt
repo_name = prompt("Enter the repository name: ", completer=RepoCompleter())
repu_sub_dir = prompt("Enter the sub directory: ", completer=SubDirCompleter())

# Response
response = requests.get(f'https://api.github.com/repos/{repo_owner}/{repo_name}/contents/{repu_sub_dir}',
        auth=(username, token))

if response.status_code == 404:
    print(f"{Fore.RED}Error:{Style.RESET_ALL} The username, token, repo owner, name, or subdirectory does not exist.")
    exit()

data = response.json()

# Readme
readme_content = "| File      | Description |\n| ----------- | ----------- |\n"
sorted_data = sorted(data, key=lambda x: (int(re.findall(r'^\d+', x['name'])[0]) if re.findall(r'^\d+', x['name']) else float('inf'), x['name']))

for file_info in sorted_data:
    if file_info['name'] not in ['.gitignore', 'README.md']:
        readme_content += f"| [{file_info['name']}](https://github.com/{repo_owner}/{repo_name}/blob/master/{repu_sub_dir}/{file_info['name']}) | {file_info['name']} |\n"

# Result
print(readme_content)

