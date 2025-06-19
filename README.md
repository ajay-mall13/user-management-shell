# 🧑‍💻 User Management Shell Script

This is a simple and interactive Bash script for basic user account management tasks on a Linux system. It supports the following operations:
- Listing users and their user IDs
- Creating new user accounts
- Resetting passwords
- Deleting existing user accounts

## 🔧 Features

- ✅ List all system users with their IDs  
- ✅ Create a user with a password  
- ✅ Reset a user's password  
- ✅ Delete a user and their home directory  

## 🚀 Getting Started

### 📂 Clone the Repository
```bash
git clone https://github.com/your-username/user-management-shell.git
cd user-management-shell
```

### 📝 Make the Script Executable
```bash
chmod +x user_manage.sh
```

## 🧪 Usage

Run the script with one of the following options:

```bash
./user_manage.sh --list     # List all users and IDs
./user_manage.sh --create   # Create a new user
./user_manage.sh --reset    # Reset a user's password
./user_manage.sh --delete   # Delete a user
```

## ⚠️ Requirements

- You need **sudo** privileges to add, reset, or delete users.
- Tested on **Ubuntu/Linux** environments.

## 📂 Script Breakdown

- `list_user`: Displays all system users and their IDs.
- `user_create`: Prompts for a new username and password, then creates the user.
- `reset_pass`: Allows password reset for existing users.
- `delete_account`: Deletes the user account and their home directory.

## 📸 Example

```bash
./user_manage.sh --create

Enter username: testuser
Enter password:
================= SUCCESSFULLY CREATED =================
```



---

✅ Feel free to modify or improve the script as needed for your environment.
