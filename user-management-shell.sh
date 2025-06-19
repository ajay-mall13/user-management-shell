#!/bin/bash

echo "Creation of user"
read -p "Enter the username: " username
read -s -p "Enter the password: " password
echo

# Create user
sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "Creation complete"

# Change password
echo "Changing password for $username"
read -s -p "Enter new password: " new_password
echo
echo -e "$new_password\n$new_password" | sudo passwd "$username"
echo "Password successfully changed for $username"

# Delete user
sudo userdel "$username"
echo "Deletion of user"

# Check if user still exists
count=$(cat /etc/passwd | grep "$username" | wc -l | awk '{print $1}')
echo "$count"

# Final message
if [ "$count" -eq 0 ]; then
    echo "As wc is 0, username is deleted"
else
    echo "Username still exists"
fi
