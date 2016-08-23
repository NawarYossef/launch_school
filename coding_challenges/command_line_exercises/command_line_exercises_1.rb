# Challenge : 
# The echo command has only one optional flag: -n, which means "Do not print the trailing newline character." Experiment with echo. 
# Run the following commands, guessing before running each what the output will be:

$ echo "hello world"
$ echo hello world
$ echo -n hello world
$ echo hello world -n
$ echo "hello world" -n
$ echo "-n hello world"

# Solution : 
# The following is the expected output of the above commands:

$ echo "hello world"
hello world
$ echo hello world
hello world
$ echo -n hello world
hello world
$ echo hello world -n
hello world -n
$ echo "hello world" -n
hello world -n
$ echo "-n hello world"
-n hello world