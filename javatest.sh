#!/bin/bash

# Function to print messages based on Java version
print_java_version_info() {
    installed_version=$1
    if [[ -z "$installed_version" ]]; then
        echo "Java is not installed."
    elif [[ "$installed_version" < "11" ]]; then
        echo "Older Java version (less than 11) is installed: $installed_version"
    else
        echo "Java installation successful. Current version: $installed_version"
    fi
}

# Install the latest version of Java
sudo apt update
sudo apt install -y default-jdk

# Check if Java is installed and print relevant messages
java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
print_java_version_info "$java_version"
