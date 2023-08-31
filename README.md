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
     * Extracts all the test files aka "x-main.c".
 
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

![push](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/1788a9aa-ba23-4858-a14c-23a2c374c477)


### The "cgcc" command
Run the ``cgcc`` command, select the test file if it exists, the code to compile and you're all set, the purpose of this is to avoid typing all the flags everytime.

![cgcc](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/1b42410f-4053-45b1-a251-267f1cefbce6)


### The "mkscript" command
Run the ``mkscript``, type the name of your script, it'll automatically open it in vim with ``#!/bin/bash`` already written on top, do your thing and after exiting the file will already be given the executable permission.

![mkscript](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b9961392-8bdd-4025-a020-d3f1fdcdc68b)


### Vim Configs

![vim config](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/b438e9c2-2d0b-4e76-9a42-48f0bb11b40f)

The numbers are useful to jump from line to line without actually counting how many lines are there.
#### Compiling with F5
In order to compile the current file by pressing F5 the following is required :
the file must be in this format "number"-"name".c for exemple ``0-putchar.c``, and the test file which is usually "number"-main.c exemple "0-main.c" .
If the test file doesn't exist use the ``cgcc`` command instead.

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


![mkfiles input](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/97305ab8-5bec-4a06-ade9-47fa0c360e7d)



3 . Enjoy !

![mkfiles output showcase](https://github.com/Matsadura/ALX_Time_Saver/assets/132571698/1c2fba58-c281-426d-952d-014c769de3d2)















