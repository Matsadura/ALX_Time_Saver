
![ALX Time Saver LOGO](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/bb8d7635-0959-4c11-bcf4-53c3d978da28)


# Welcome to "ALX Time Saver" ⏰

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
   - [Convenient indentation and white space removal](#fixall-command)

2. **Custom Vim Configuration:**
   - [Line Numbers on the Left](#vim-configs)
   - [Betty, Pycodestyle, Spellcheck Checker Integration](#betty-with-f2)
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
5. [Test Suite](#test-suite)
   - Develop a test suite capable of efficiently examining multiple test cases with simplicity and speed.
## Changelogs
__Added__
```
* ALX Time Saver v2.14 (04-02-2024)
* F2 for betty, pycodestyle and spellcheck in vim
* mkfiles :
   1 . Support for python files
   2 . Get list of current project
   3 . Get list of all projects

```
__Changed__
```
* mkfiles :
   1 . Code restructure
```

__Fixed__
```
-
```

__Known Issues__
```
1 . push :
   * git check-ignore command might be unstable (need to do more testing to confirm this)
2. F3 does not fully support python
```

__To Do__
```
* Updater script
* Add autoindent for python
* Fix known issues
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
| the above plus '-m' "commit msg  | Add a commit message |

### Compile Command
Run the `compile` command, select the test file (if it exists) and the code to compile. Avoid typing all the flags every time!

![compile](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/65957f8a-ea1d-449a-99a3-56b4821691b7)

| Syntax                     | Description                    |
| ---------------------------|--------------------------------|
| compile                    | Interactive mode               |
| compile file_1 file_2...   | One-line command               |
| the above plus '-o'        | Add the output's name          |

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

### fixall command
Run `fixall` command followed the the specified directory(s), it'll automatically fix the indentation and remove all white spaces from the `.c` and `.h` files.

![fixall demo](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/886ed4c8-7a1b-4e20-8acc-9ba47fadd82f)

| Syntax                       | Description                              |
| ------------------------------|------------------------------------------|
| fixall                     | Automatically selects the current directory  |
| fixall dir1 dir2 ...            | Selects the specified directories    |

### Vim Configs

![vim config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b438e9c2-2d0b-4e76-9a42-48f0bb11b40f)

The numbers are handy for jumping between lines without counting them.

#### Compiling with F5
To compile the current file by pressing F5, the file must be in this format: "number"-"name".c (e.g., `0-putchar.c`), and there should be a test file usually named "number"-main.c (e.g., `0-main.c`). If the test file doesn't exist, use the `compile` command instead.

![VIM F5 Showcase](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/46ecc108-9288-4f7f-a5b2-b5302f251348)

#### Betty, Pycodestyle, Spellcheck with F2
Press F2 in Vim instead of leaving it to run "betty or pycodestyle or spellcheck file_name.c" separately.

![Betty](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/ccb022bf-b0fa-4089-bfdb-2fa061632744)

#### Auto Indent with F3
Check out this demonstration.
PS : It does not work on python (yet)

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

![mkfiles_rework](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/a0cf69cc-620e-4528-a2da-8f4437d76e28)

### Test Suite
Execute the `setall` command in the sequence of the main function file, followed by the header file and the test cases. Afterward, use the `testall` command, specifying the main function files and the additional function files to initiate the test suite.
Points to Remember:
   - It's unnecessary to employ the `setall` command again when reusing the test suite.
   - To update the test cases, reset the test suite, maintaining the same order of arguments to ensure the corresponding tests are updated.
   - The main function should always be the first argument in the `testall` command; otherwise, it won't function correctly.
   - The additional fucntion files are required during compilation.
   - You can have multiple test suites.

![test suite demo](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/ba21a3d7-77b2-41bf-aa76-206acc67e066)

| Syntax                       | Description                              |
| ------------------------------|------------------------------------------|
| setall main_function.c header.h test1.c testX.c ...  | Sets the test suite for the `main_function.c`  |
| testall main_function.c secondary_function.c more_functions.c ...  | Runs the test suite for the `main_function.c` |

Enjoy coding efficiently with ALX Time Saver! 🕒💻

This project is made with love, special thanks to all the contributors.


## More Projects
[ALX Planning Tracker](https://github.com/Matsadura/ALX_Holberton-Planning-Tracker)

[Monty Language Interpreter](https://github.com/Matsadura/monty)

[Simple Shell](https://github.com/Matsadura/simple_shell)

[Printf Implementation](https://github.com/Matsadura/printf)
