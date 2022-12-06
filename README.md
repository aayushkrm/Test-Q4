# Test Question 4

Create a script caller `username` printing the user's login by user's `uid` acording to the `passwd` file data. The file is in a standard format, i.e., a table where each line corresponds to a single user, columns are spearated by semicolons (:), the first colum is the user's login, the and thrid one is the user's `uid`.

The script's calling syntax is 
    `username [-f file] uid

where `file` is the analysed file (`/etc/passwd` is used if not given), `uid` is the user's `uid` (mandatory).

In case of success, the script should print the user's login to the output stream and return (exit status) 0. If the user is not found, the script should print a corresponding error message to the error stream and return 1. In case of incorrect arguments, the program should print a corresponding error message to the error stream and return 2.

## To use this script, save the code to a file named `username` and make it executable using the chmod command:

`chmod +x username`
You can then run the script using the following syntax:

`./username [-f file] uid`
For example, to get the username for the user with ID 1000 from the default passwd file, you can run the following command:

`./username 1000`

Or, to get the username for the user with ID 1000 from a custom passwd file, you can use the -f option to specify the path to the file, like this:

`./username -f /path/to/custom/passwd/file 1000`

The script will print the user's login to the output stream and return 0 on success, or it will print an error message and return 1 or 2 if the user is not found or if incorrect arguments are given, respectively.
