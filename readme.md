EXERCISE 2: Bash Script - Install Java

Write a bash script using Vim editor that installs the latest java version and checks whether java was installed successfully by executing a java -version command.

After installation command, it checks 3 conditions:

    1. whether java is installed at all
    2. whether an older Java version is installed (java version lower than 11)
    3. whether a java version of 11 or higher was installed

It prints relevant informative messages for all 3 conditions. Installation was successful if the 3rd condition is met and you have Java version 11 or higher available.


Make code executable by running the following command in the CLI:

    chmod +x javatest.sh

Run the script using:

    ./javatest.sh

The script with check to see if java is installed, if not, it will install
    it.  Then it will print the current version.


