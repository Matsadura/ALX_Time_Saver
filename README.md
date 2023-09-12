# Welcome to "ALX Time Saver" 🚀

Tired of repeating those monotonous commands like "git add," "git commit," and "git push" every time you want to push your code? Or the hassle of typing out a lengthy compilation command? And don't even get us started on those pesky trailing white spaces...

ALX Time Saver is here to rescue you from the repetitive grind and more!

⚠️ IMPORTANT NOTE: Remember, at ALX, we prioritize learning. Make sure you understand these operations manually before diving into the convenience of ALX Time Saver. We're here to help you grow! ⚠️

If you love our project, show some appreciation by giving it a star and, if you're up for it, contribute to make it even better.

__To contribute__ : 
Fork the project, make your changes with proper documentation, make sure they work, make a pull request.

🙏 Contributions can range from fixing typos to adding exciting new features. 🙏

## Features
1. Comfortable :
     * [Simplified Pushing](#push-command )
     * [Effortless Compilation](#compile-command)
     * [Convenient Script Creation](#mkscript-command)

2. Custom Vim Configuration :
     * [Line Numbers on the Left](#vim-configs)
     * [Betty Checker Integration](#betty-with-f2)
     * [Compile from Vim (yes, you read that right!)](#compiling-with-f5)
     * [Instantly Remove Trailing Whitespaces](#remove-whitespace-with-f4)
     * [Automatic Code Indentation](#auto-indent-with-f3) 
 
3. [Readme maker](#readme-maker)
     * Automatically Organizes Project Files in an Interactive Table

4. [AIO Toolkit](#all-in-one-maker)
     * Extracts all the functions prototypes of a certain project and appends them in a "main.h" file.
     * Generates Project Files with Ease
     * Retrieves Test Files (x-main.c)
     * Downloads _putchar.c and Updates main.h with its Prototype

       
## Changelogs
__Added__
```
* ALX Time Saver v2.00
* Login to intranet via mkfiles
* One liner for "push" "compile" "mkscript"
* Auto completion in read_maker
```

__Fixed__
```
-
```

__Know Issues__
```
Nothing that I know of yet.
```

 __To Do__
 ```
 * Uninstall script
 * One liner commit flag for "push"
 * One liner output name flag for "compile"
 * Option to create directory if not found for "mkfiles"
 * Backup your original vimrc and restore it upon unistall
```
 
## Installation in 3 simple steps 😃

1. Clone the repository  
     ```
     git clone https://github.com/Matsadura/ALX_Time_Saver/ 
     ```

2. Go to the cloned directory   
     ```
     cd ALX_Time_Saver
     ```

3. Run the installation script
     ```
     ./install.sh
     ```

Let it do it's magic and you're all set 🚀

__NOTE : If you used the previous version you must restart your system to avoid conflict with this version__ 

## Features 
### push command 
Run the ``push`` command, select which file(s) to push and add your commit message.

![push](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/1788a9aa-ba23-4858-a14c-23a2c374c477)


| Syntax | Description |
|-----------------|---------------|
|push|you can use this for interactive mode|
|push -f|Force add ignored files in interactive mode|
|push file_name1 file_name_2...|One line command|
|push -f file_name1 file_name2...|Force push one line command|

### compile command
Run the ``compile`` command, select the test file if it exists, the code to compile and you're all set, the purpose of this is to avoid typing all the flags everytime.

![compile](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/65957f8a-ea1d-449a-99a3-56b4821691b7)


|Syntax|Description|
|---|----|
|compile|Interactive mode|
|compile file_1 file_2...|One line Command|
### mkscript command
Run the ``mkscript``, type the name of your script, it'll automatically open it in vim with ``#!/bin/bash`` or ``#!/usr/bin/python3`` already written on top, do your thing and after exiting the file will already be given the executable permission.

![mkscript](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/ca82fd75-dabc-4590-9e83-0f7d100dc0f5)


|Syntax|Description|
|---|----|
|mkscript|Interactive mode|
|mkscript file_name|Semi interactive mode|
|mkscript -p|Semi interactive mode for python script|
|mkscript -b|Semi interactive mode for bash script|
|mkscript -p file_name|One Line Command for python script|
|mkscript file_name -p|One Line Command for python script|
|mkscript -b file_name|One Line Command for bash script|
|mkscript file_name -b|One Line Command for bash script|

### Vim Configs

![vim config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b438e9c2-2d0b-4e76-9a42-48f0bb11b40f)

The numbers are useful to jump from line to line without actually counting how many lines are there.
#### Compiling with F5
In order to compile the current file by pressing F5 the following is required :
the file must be in this format "number"-"name".c for exemple ``0-putchar.c``, and the test file which is usually "number"-main.c exemple "0-main.c" .
If the test file doesn't exist use the ``compile`` command instead.

![VIM F5 Showcase](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/46ecc108-9288-4f7f-a5b2-b5302f251348)


#### Betty with F2
Instead of leaving VIM then running " betty file_name.c ", you could press F2 instead in VIM and get betty's results. 

![Betty](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/ccb022bf-b0fa-4089-bfdb-2fa061632744)


#### Auto Indent with F3
For this I'll let this demonstration do the talking.

![Vim AUTO INdent](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/8320f485-856d-4e88-a0dc-c50446d79b9b)


#### Remove WhiteSpace with F4
White space will be highlighted in Red.

![TrailierTrash](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/474b5690-1ace-412c-8665-7ed248d5a2a0)


### Readme Maker
To use this script first you must configure it, replace with your info :

![readme_config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/15fec8b3-bee9-4e99-9de6-21afea2d5720)

cd to the ALX-Time-Saver and launch the script with ``./read_maker.py``, then enter the name of repo, subdirectory of the project, note this connects to your github so make sure you have everything you need pushed, the output should be in markdown copy it to your ``README.md`` and you're all set.

![readmaker_demo](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/6414f3c2-4133-42fb-add0-2439154f1071)


If you click on a file it'll open it (in github of course).

### All in one Maker

Run the script with ``mkfiles``, the new files will be in your location of choice.

Demonstration : 

![mkfiles](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/5b9be194-cf14-45a7-9cb8-8fce28696aac)

