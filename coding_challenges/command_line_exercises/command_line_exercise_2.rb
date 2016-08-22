1- Create a directory in your home directory called "cli-tmp".

Solution :
$ mkdir ~/cli-tmp

---------------

2- rom the home directory, create a file in the cli-tmp directory called "from-home.txt".

Solution :
$ cd
$ touch cli-tmp/from-home.txt

-------------

3- Navigate to the cli-tmp directory, then create a file called "in-cli-tmp".

Solution :
$ cd cli-tmp
$ touch in-cli-tmp

-----------

4- Try to make a directory called "in-cli-tmp" within the cli-tmp directory. What happens?

Solution :
$ mkdir in-cli-tmp
mkdir: in-cli-tmp: File exists

------------

5- Remove the from-home.txt file.

solution :
$ rm from-home.txt

-------------

6- Remove the cli-tmp directory (hint use man to see how to remove a directory recursively).

solution :
$ cd
$ rm -r cli-tmp

--------------


