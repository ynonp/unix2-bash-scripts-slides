# Unix Scripting Lab

## Part 1: Shell Review

1. Create a new directory for the course in your home folder called `lab`. Inside, create the following files: 
	* `main.c`, `game.c`, `enemy.c`, `hero.c`, `a.out`
	* `monster.h`, `human.h`
	* `.highscore`

2. Create the following directories under `lab`
	* `Music`, `Misc`, `Drivers`
	
2. Display all files starting with an `e`
3. Copy all files and folders starting with a capital letter to a new directory called capitals
4. Delete all files whose extension is a single letter
5. Rename both occurences of `Misc` folder to `Test`
6. Delete all files containing m

***

1. Use `ls` to list all files containing a lowercase letter in their name, AND the nonexistant file named `Hidden`
2. Now show the same list, but redirect standard output to a file
3. Now show the same list, but redirect standard error to a file
4. Combine 2 and 3: Redirect standard output to one file, and standard error to another
5. Create 3 files: `file1`, `file2`, `file3`
6. Use `hostname` to write the current host name into `file1`
7. Prevent file clobbering
8. Repeat (6). Did you get an error ?
9. Fix the error keeping the noclobber option set

## Part 2: Environment

1. Create a new directory named: `I have $5`
2. Create an alias that finds all files larger than 2k but smaller than 5k
3. Create an alias that finds all directories in /tmp owned by the current user
4. Create an alias that finds all files modified within the last 4 hours
5. Create a shell function that finds partial matches of a file name, so you could type: `findpartial txt` to get all files with txt in their name
6. Create an alias for `cp` that turns it to `cp -i`
7. Create an alias for `rm` that turns it to `rm -i`
8. Create an alias that prints how many files exist under current directory
9. Create an alias that prints how many executable files exist under current directory
10. Create a shell function that takes a date and prints how many files were modified in that date


## Part 3: Getting Parameters

1. Write a shell script that takes a file name as input and prints the file backwards
2. Write a shell script that reads a file name from the user, prints its contents and the number of lines in the file.
3. We can get a list of all file extensions in current directory using: `ls *.* | cut -d. -f2|sort -u`. Find a way to get the same list using only shell builtins (i.e. without `cut`, `awk`, `sed`, `grep` or `tr`)
7. Write a shell script that finds each directory named `Misc` under current folder recursively and replaces each to the name `Test`. Hint: Use find
8. Write a shell script that takes any number of numeric arguments and prints the largest one

## Part 4: Conditionals

1. Write a shell script that asks the user for a number, if the user chooses 7 - print "You Win".
2. Modify 02.csh from previous part so that it CAN take argument from command line. If no argument was passed read from STDIN 
1. Write a shell script that takes an input argument and tells if it's a string or a number (Hint: try `expr a + 0`)
4. Write a shell script called `eyes` that starts and tracks a single xeyes instance:
    - Typing `eyes start` starts xeyes and writes the started process id in a file (called eyes.pid). If the file already exists start should not start a new instance.
    - Typing `eyes stop` checks if an eyes.pid file exists, and if so kills the process and deletes the file. If no eyes.pid file exists stop should do nothing.
    - Typing `eyes status` checks if eyes.pid file exists. If it does prints "Running", else prints "Not Running".
    - Make sure `eyes stop` kills only the xeyes instance started by `eyes start`.
5. Write a shell script that prints the sum of its arguments


## Part 5: Loops
2. Write a shell script called "wait_for_user" that takes a user name and checks if the user is logged in. If she's not logged in, the script sleeps for 5 seconds and checks again in a loop - until the user logs in.
3. Write a shell script that reads a file and prints its content double-spaced (adding a blank line after each line)
4. Write a shell script that reads a file and prints its content with no blank lines.
5. Write a shell script that reads a file and prints out only the longest line
6. Write a shell script that takes a two file extensions as input (call them ext1 and ext2), and renames all files ending with ext1 to end with ext2. 
7. write a shell script that takes several file names as inputs, and copies itself to each of the files. don't forget to set execute permissions on the target files.
1. Write a shell script that takes input as command line arguments and prints them out backwards (first argument printed last).
9. Write a shell script that print an indented directory tree (without using tree, find or ls)


## Part 6: Getopt and Select
1. Take the lc shellscript from part 4 (which lowercases a file) and modify it so it asks the user for a file name from all the files in the directory.
2. Write a shell script that asks the user for a file extension (select from all existing extensions in the directory) and prints how many files in the directory have that extension
3. Modify the previous script to take the extension using a command line switch. Running example: `count_files -e mp3` should print how many mp3 files are in the directory. Running without the switch should perform the same behaviour as the original script.
4. Write a shell script that takes a file name and a new name, and changes all files with the given name (recursively in all folders) to the new name. The script should accept a boolean switch `-n`. When running with -n it should just print all the mv operations without running them.




## Part 7: Named Pipes
1. Create a named pipe called `bob`
2. Print out the list of files to the named pipe. Notice ls blocks.
3. Read the contents of the pipe using cat. Notice ls unblocks.
4. Write a shell script that creates a named pipe and listens on it. For
   every new line it reads from the pipe, it should create a new file
whose name is the first word in the line.
Can you delete the named pipe when the script ends ?

5. Write a shell script that creates a named pipe and then executes
   `find /`. If it reads the word "exit" from the named pipe, it should
stop the find and quit.
Hint: `$!` is the process id of the last started process

 
## Part 8: Functions

1. Write a shell function called sum that returns the sum of its arguments
2. Write a shell function called countExecutables() that takes a directory name as parameter and returns the number of executable files in that directory.
3. Write a shell function that prints out the multiplication table. Function should take a number `n` and print a table sized `n*n`.
For example, running `mul 5` should produce:

```
1  2   3   4   5
2  4   6   8   10
3  6   9   12  15
4  8   12  16  20
5  10  15  20  25
```

4. Write a shell script that includes the following functions:
  - `add_contact` takes a name and an email.  
  - `list_contacts` prints out a list of all available contact details and
emails
  - `email_contact` takes a name and some text, and sends the text to the contact's email address (as specified before when the contact was added).  

Use a contacts.txt file to store the data.   
Now write another script which uses the functions

5. Write a shell function called `tree` that prints an indented directory tree (without using the `tree` command)

## Part 9: Awk and Sed

1. Add a blank line after each line of input
6. Change an existing file, so each line should start with a '> '
7. Write a shell script that takes a file name as input and performs:
    * If a line starts with `#`, replace each character with a `-`
    * For all other lines, replace each character with a `.`
8. (*) Delete duplicate words from input line
9. Replace the first and last word in every line
10. The command `/sbin/ifconfig` prints out information about network interfaces. Here's a sample output for the command:
<pre><code>
en3: flags=8963<UP,BROADCAST,SMART,RUNNING,PROMISC,SIMPLEX,MULTICAST> mtu 1500
        options=60<TSO4,TSO6>
        ether 32:00:18:24:c0:00
        media: autoselect <full-duplex>
        status: inactive
p2p0: flags=8843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST> mtu 2304
        ether 06:38:35:47:96:24
        media: autoselect
        status: inactive
</pre></code>
Write a shell script that runs `/sbin/ifconfig` and creates an information file for each network interface. For example
the above interface should produce two files: first is named en3.info and has the en3 block, and the second is named p2p0.info and has the second block

