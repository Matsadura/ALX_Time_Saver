
![ALX Time Saver LOGO](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/bb8d7635-0959-4c11-bcf4-53c3d978da28)


# Welcome to "ALX Time Saver" 🚀

Tired of those endless "git add," "git commit," and "git push" commands? Frustrated with typing out lengthy compilation strings? Say goodbye to the tedium and whitespace woes with ALX Time Saver!

⚠️ IMPORTANT NOTE: At ALX, we prioritize learning. Make sure you grasp these operations manually before diving into the convenience of ALX Time Saver. We're here to help you grow! ⚠️

If you love our project, show some love with a star and, if you're feeling adventurous, contribute to make it even better.

**To contribute:**
Fork the project, make changes with proper documentation, ensure they work, and submit a pull request.

🙏 Contributions can vary from fixing typos and issues to adding exciting new features. 🙏

## Key Features
1. **Comfortable:**
   - [Simplified Pushing](#push-command)
   - [Effortless Compilation](#compile-command)
   - [Convenient Script Creation](#mkscript-command)

2. **Custom Vim Configuration:**
   - [Line Numbers on the Left](#vim-configs)
   - [Betty Checker Integration](#betty-with-f2)
   - [Compile from Vim (yes, you read that right!)](#compiling-with-f5)
   - [Instantly Remove Trailing Whitespaces](#remove-whitespace-with-f4)
   - [Automatic Code Indentation](#auto-indent-with-f3)

3. [Readme Maker](#readme-maker)
   - Automatically Organizes Project Files in an Interactive Table

4. [All-in-One Toolkit](#all-in-one-maker)
   - Extracts all function prototypes for a project and appends them to the header file.
   - Generates project files with ease.
   - Retrieves test files (x-main.c).
   - Downloads _putchar.c and updates header file with its prototype.

## Changelogs
__Added__
```
* ALX Time Saver v2.02 (23-09-2023)
* Create directory and it's partent directories if not found when using mkfiles
* The header file is guarded when required
* Structures are added to the header file when required
```
__Changed__
```
* Append to VIMRC instead of overwrite it
```

__Fixed__
```
1 . mkfiles :
   * Header file's name is always "main.h" even for project that require a differnt one
   * Combines all file names into one for tasks that require multiple files
   * All prototypes are appended to main.h even if tasks require them to be in a different header file
2 . compile :
   * it requires _putchar.c to be present in the current directory even when it's not needed

```

__Known Issues__
```
1 . push :
   * git check-ignore command might be unstable (need to do more testing to confirm this)
```

__To Do__
```
* Fix known issues
* One-liner commit flag for "push"
* One-liner output name flag for "compile"
```

## Installation in 3 Simple Steps 😃
1. Clone the repository:
   ```
   git clone https://github.com/Matsadura/ALX_Time_Saver/
   ```

2. Navigate to the cloned directory:
   ```
   cd ALX_Time_Saver
   ```

3. Run the installation script:
   ```
   ./install.sh
   ```

Let it work its magic, and you're all set! 🚀

If you want to unistall :
```
./unistall.sh
```

**NOTE:** If you've used the previous version, please restart your system to avoid conflicts with this version.

## Features 

### Push Command 
Run the `push` command, select the file(s) to push, and add your commit message.

![push](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/1788a9aa-ba23-4858-a14c-23a2c374c477)

| Syntax                        | Description                         |
| ------------------------------|-------------------------------------|
| push                           | Interactive mode                    |
| push -f                        | Force-add ignored files in interactive mode |
| push file_name1 file_name_2... | One-line command |
| push -f file_name1 file_name2... | Force-push one-line command |

### Compile Command
Run the `compile` command, select the test file (if it exists) and the code to compile. Avoid typing all the flags every time!

![compile](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/65957f8a-ea1d-449a-99a3-56b4821691b7)

| Syntax                     | Description                    |
| ---------------------------|--------------------------------|
| compile                    | Interactive mode               |
| compile file_1 file_2...   | One-line command               |

### mkscript Command
Run the `mkscript` command, type your script's name, and it will automatically open in Vim with `#!/bin/bash` or `#!/usr/bin/python3` already written at the top. After exiting, the file will have executable permission.

![mkscript](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/ca82fd75-dabc-4590-9e83-0f7d100dc0f5)

| Syntax                       | Description                              |
| ------------------------------|------------------------------------------|
| mkscript                     | Interactive mode                         |
| mkscript file_name            | Semi-interactive mode                    |
| mkscript -p                  | Semi-interactive mode for Python script  |
| mkscript -b                  | Semi-interactive mode for Bash script    |
| mkscript -p file_name        | One-line command for Python script       |
| mkscript file_name -p        | One-line command for Python script       |
| mkscript -b file_name        | One-line command for Bash script         |
| mkscript file_name -b        | One-line command for Bash script         |

### Vim Configs

![vim config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b438e9c2-2d0b-4e76-9a42-48f0bb11b40f)

The numbers are handy for jumping between lines without counting them.

#### Compiling with F5
To compile the current file by pressing F5, the file must be in this format: "number"-"name".c (e.g., `0-putchar.c`), and there should be a test file usually named "number"-main.c (e.g., `0-main.c`). If the test file doesn't exist, use the `compile` command instead.

![VIM F5 Showcase](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/46ecc108-9288-4f7f-a5b2-b5302f251348)

#### Betty with F2
Press F2 in Vim instead of leaving it to run "betty file_name.c" separately.

![Betty](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/ccb022bf-b0fa-4089-bfdb-2fa061632744)

#### Auto Indent with F3
Check out this demonstration.

![Vim Auto Indent](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/8320f485-856d-4e88-a0dc-c50446d79b9b)

#### Remove Whitespace with F4
Whitespace is highlighted in red.

![TrailierTrash](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/474b5690-1ace-412c-8665-7ed248d5a2a0)

### Readme Maker
To use this script, first configure it by replacing the info as shown:

![readme_config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/15fec8b3-bee9-4e99-9de6-21afea2d5720)

CD to ALX-Time-Saver and launch the script with `./read_maker.py`. Enter the repo name, project's subdirectory, and make sure everything you need is pushed to GitHub. The script generates markdown for your `README.md`.

![readmaker_demo](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/6414f3c2-4133-42fb-add0-2439154f1071)

Clicking on a file opens it (on GitHub).

### All-in-One Maker
Run the script with `mkfiles`, and the new files will be in your chosen location.

Demonstration:

![mkfiles](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/5b9be194-cf14-45a7-9cb8-8fce28696aac)

Enjoy coding efficiently with ALX Time Saver! 🕒💻
