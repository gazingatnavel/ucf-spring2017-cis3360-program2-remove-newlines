# ucf-spring2017-cis3360-program2-remove-newlines
bash shell script for removing newline characters from data files and data files with newlines removed

This is a bash shell script that will remove newline characters from data files for UCF Spring 2017 CIS 3360 program assignment 2.

If you don't want to use the script, you can just copy the data files from here to the directory in Eustis in which you are running your program. The data files here have the newlines removed.

The shell script (`remove-newlines.sh`) will will remove newlines from the assignment data files `WS.plain, WS.crc, WC-ngi.plain, WC-ngi.crc, input2A.plain, input2A.crc, WC-16.plain, WC-16.crc, and WS-BOGUS.crc`.

Here's what it does:
1. Copies the data file to a temp file.
2. Removes the newline characters from the temp file.
3. Writes the temp file (now without newlines) to the original data file.

The end result is that all newlines will have been removed from the original data files.

To use the shell script:
1. Copy the shell script to the directory in Eustis where the data files exist.
2. Make the shell script executable by running the command `chmod 744 remove-newlines.sh`.
3. Run the script by typing the command `./remove-newlines.sh`.
When you run the script, you should see something like:
```
Removing newlines from WC-ngi.plain... Done
Removing newlines from WC-ngi.crc... Done
Removing newlines from input2A.plain... Done
Removing newlines from input2A.crc... Done
Removing newlines from WS.plain... Done
Removing newlines from WS.crc... Done
Removing newlines from WC-16.plain... Done
Removing newlines from WC-16.crc... Done
Removing newlines from WS-BOGUS.crc... Done
```
