# Welcome to "ALX Time Saver"

  Aren't you tired of repeating "git add git commit git push" everytime you want to push a file ? or typing the whole " gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 0-test_file.c 0-source.c -o 0-output " to test if your modification works ? and let's not talk about finding the trailing white space...

ALX Time Saver will help take some of the stress of these repetetive tasks and more.

__IMPORTANT REMARQUE : Learn how to do these operations manually before you start using this, we're here to LEARN at ALX.__

If you like the project please give it a star, and feel free to contribute.

To contribute : 
Fork the project, make your changes with proper documentation, make sure they work, make a pull request.

Contibutions can vary from fixing typos to adding new features.

## Features
1. Custom aliases for :
     * Pushing
     * Compiling
     * Making a bash script

2. Custom Vim Configuration :
     * Lines numbers on the left side 
     * Run betty from vim
     * Compile the current file opened in vim from vim ( mind blowing I know )
     * Remove all trailing white space with the press of a button
     * Automatically indent your code with the press of a button 
 
3. Readme maker
     * Automatically puts all your project files in a table with interactive names

4. AIO Header / Test Files / Project Files Maker
     * Extracts all the functions prototypes of a certain project and appends them in a "main.h" file.
     * Creates all the project files.
     * Extracts all the test files aka "x-main.c" to files aka "taskx.c" (to be compitable with compiling via VIM with F5)
 
## Installation 

Clone the repository : 
 
``` git clone https://github.com/Matsadura/ALX_Time_Saver/ ```

Then go to the cloned directory and run the installation script :

``` ./install.sh ```

Let it do it's magic and you're all set !

__NOTE : For the aliases to take effect you must restart your system__ 

## Features 
### The "push" command 
Run the ``push`` command, select which file(s) to push and add your commit message.

![push](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/4fbd54d0-c7d7-47d1-9999-76c99c7e072b)

### The "cgcc" command
Run the ``cgcc`` command, select the test file if it exists, the code to compile and you're all set, the purpose of this is to avoid typing all the flags everytime.

![cgcc](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/5025a37d-5674-4074-b220-09cd305eee7e)

### The "mkscript" command
Run the ``mkscript``, type the name of your script, it'll automatically open it in vim with ``#!/bin/bash`` already written on top, do your thing and after exiting the file will already be given the executable permission.
### Vim Configs

![vim config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b438e9c2-2d0b-4e76-9a42-48f0bb11b40f)

The numbers are useful to jump from line to line without actually counting how many lines are there.
#### Compiling with F5
In order to compile the current file by pressing F5 the following is required :
the file must be in this format "number"-"name".c for exemple ``0-putchar.c``, and the test file which is usually "number"-main.c exemple "0-main.c" should be in this format task"number".c for exemple ``task0.c`` (If you don't like this format you can change it, you're a future software engineer after all).
If the test file doesn't exist use the ``cgcc`` command instead.
#### Betty with F2
Instead of leaving VIM then running " betty file_name.c ", you could press F2 instead in VIM and get betty's results. 
#### Auto Indent with F3
For this I'll let these pictures do the talking.

Before pressing F3 :

![Before indent](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/09af4a1e-20c0-45ee-9287-6fc4fb1237c4)

After pressing F3 :

![After indent](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/fceb67e6-a750-47f9-b2db-6de13c8110ef)

#### Remove WhiteSpace with F4
White space will be highlighted in Red.

Before Pressing F4 : 

![Red Whitespace](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/a1ce22ce-f8d8-4c41-b4eb-e5a5adb70e67)

After pressing F4 : 

![After whitespace](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/3f3aa40a-550e-47d5-aa58-004644a570f8)

### Readme Maker
To use this script first you must configure it, replace with your info :

![Repo sub](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/8e553126-7f53-4ee6-9ba2-8974f3f4bbd5)

launch the script with ``python3 read_maker.py``, then enter the name of subdirectory of the project, note that you must do this after you finish your project otherwise the script will do nothing, the output should be in markdown copy it to your ``README.md`` it should look like this (except the description, you must do it yourself.)

![readme](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/2d30f472-0e95-45fe-8804-0c531aa197bb)

If you click on a file it'll open it (in github of course).

### All in one HEADER / TESTS / FILES Maker
This needs more work but it does the job for now, in order to take advantage of it you must download the page of the project by saving it as ``.html``, then : 
* Run the script with ``mkfiles``, the new files will be in your location of choice.

Follow these steps : 

1 . Save the page :

![1](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b5cf7059-8b4e-43d9-a232-42526492ad23)

![2](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/7a6ac4d8-2bad-4a49-a056-38e641115f3c)

![3 - save or change name](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/8976c499-cf34-4df5-91e8-da0b9d268deb)

2 . Launch the script (use ``mkfiles``) :

![all in one](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/e00cae03-9ee8-46dd-bff6-ab0af3de4f97)



3 . Enjoy !

![all in one output](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/3bb73d6c-83f0-4875-9eb1-a51b8a80d075)












