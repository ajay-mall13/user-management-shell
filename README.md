# User Management Script

This Bash script automates the process of creating a Linux user, setting their password, updating the password, and deleting the user. It also verifies whether the user has been deleted from the system.

## Features

- Prompt for username and password
- Create a new user with a home directory
- Change the user's password
- Delete the user from the system
- Verify user deletion from `/etc/passwd`

## Requirements

- Linux system with `bash`, `sudo`, `useradd`, `passwd`, and `userdel` commands
- Script must be run with a user who has `sudo` privileges

## Usage

1. Make the script executable:

   ```bash
   chmod 764 user_script.sh
   ```

2. Run the script:

   ```bash
   ./user_script.sh
   ```

3. Follow the prompts:

   - Enter a **username**
   - Enter an **initial password**
   - Enter a **new password** (to simulate password update)
   - The script will then delete the user and confirm the deletion

## Example Output

```
Creation of user
Enter the username: testuser
Enter the password:
Creation complete
Changing password for testuser
Enter new password:
Password successfully changed for testuser
Deletion of user
0
As wc is 0, username is deleted
```

## Warning

- This script **deletes the user** after creation and password change, so it's only meant for testing or learning purposes.
- Do **not** use this in production systems without modification.

## Script Flow Summary

```
1. Prompt for username and password
2. Create the user
3. Set the initial password
4. Change the password
5. Delete the user
6. Confirm deletion
```


