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
7- Create a nested set of directories in your home directory: cli-tmp > parents > children > grandchildren (hint: use the -p flag to do it all at once).

solution :
$ mkdir -p ~/cli-tmp/parents/children/grandchildren

-------------
8- Navigate to the children directory.

solution :
$ cd ~/cli-tmp/parents/children

------------
9- Create a file named "bob".

solution :
$ touch bob

-----------
10- Move the file named "bob" to the grandchildren directory.

solution :
$ mv bob grandchildren

-----------
11- Copy the grandchildren directory to the parents directory, and rename it "nephews".

solution :
$ cp -r grandchildren ../nephews

-----------
12- Copy the contents of the "nephews" directory to the "children" directory.

solution : 
$ cp -r ../nephews/* ./

----------
13- View what you've done with the tree command: $ tree ~/cli-tmp.

solution : 
$ tree ~/cli-tmp
/Users/[username]/cli-tmp/
└── parents
  ├── children
  │   ├── bob
  │   └── grandchildren
  │       └── bob
  └── nephews
      └── bob

----------------
14 - Remove the "bob" file from the grandchildren directory.

solution:
$ rm ~/cli-tmp/parents/children/grandchildren/bob

---------------
15- Remove the cli-tmp directory.

solution :
$ cd
$ rm -r cli-tmp

---------------


