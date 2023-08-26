import requests
import base64
import re

username = 'IamZidane'  # Replace with your GitHub username
token = 'token_here'  # Replace with your GitHub Token
repo_owner = 'IamZidane' #Replace with your Github username
repo_name = 'alx-low_level_programming' #Select the repo
repu_sub_dir = input("Enter the sub directory: ") #Select the directory

response = requests.get(f'https://api.github.com/repos/{repo_owner}/{repo_name}/contents/{repu_sub_dir}',
                        auth=(username, token))
if response.status_code == 404:
    print("Error: The username, repo owner, repo name, or repo subdirectory does not exist.")
    exit()
data = response.json()

readme_content = "| File      | Description |\n| ----------- | ----------- |\n"
sorted_data = sorted(data, key=lambda x: (int(re.findall(r'^\d+', x['name'])[0]) if re.findall(r'^\d+', x['name']) else float('inf'), x['name']))
for file_info in sorted_data:
    if file_info['name'] not in ['.gitignore', 'README.md']:
        readme_content += f"| [{file_info['name']}](https://github.com/{repo_owner}/{repo_name}/blob/master/{repu_sub_dir}/{file_info['name']}) | {file_info['name']} |\n"

print(readme_content)
