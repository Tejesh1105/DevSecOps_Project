# 👥 Linux User Creation Script (with Password Generator)

This Bash script automates the creation of Linux system users by accepting usernames as arguments. It verifies each username, checks for duplicates, creates the user with a default shell, and generates a secure temporary password.


## 🚀 Features

- Accepts **multiple usernames** as input arguments
- Verifies if the username contains **only alphabets**
- Checks whether the user **already exists**
- Creates the user with:
  - `/bin/bash` as default shell
  - Home directory
- Generates a **temporary password** containing a special character
- Forces password reset on first login

## 💡 Usage

```bash
chmod +x user_create.sh
sudo ./user_create.sh username1 username2 ...
Direct method without using permissions :-
bash file_name.sh

🔐 Password Format
The password is dynamically generated and includes:
A fixed prefix: Company_Name@
A random number ($RANDOM)
A randomly selected special character (e.g., @, #, !, etc.)

📌 Notes
The script must be run as a user with sudo privileges.
If no parameters are passed, it will display:
"Please enter the valid parameters"
If the username already exists, it will notify and skip creation.

⚠️ Disclaimer
This script is intended for educational/demo purposes.
Please modify the password policy and security practices according to your organization's standards before using in production.


