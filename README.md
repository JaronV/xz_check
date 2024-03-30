# xz_check

## Description

This Bash script checks the version of the `xz` compression utility installed on your system and determines whether it is vulnerable to specific vulnerabilities. It captures the version of `xz` and checks if it contains either "5.6.0" or "5.6.1". If the version matches, it notifies the user that the version is vulnerable.

## Usage

1. Clone the repository from GitHub:
    ```bash
    git clone https://github.com/jaronv/xz_check.git
    ```
2. Change into the cloned directory:
    ```bash
    cd xz_check
    ```
3. Make the script executable:
    ```bash
    chmod +x vulnerable_xz_check.sh
    ```
4. Run the script:
    ```bash
    ./xz_version_checker.sh
    ```

## Script Details

The script performs the following actions:

1. Executes the `xz --version` command and captures its output.
2. Extracts the version number from the output.
3. Checks if the version contains either "5.6.0" or "5.6.1".
4. Displays a message indicating whether the version is vulnerable or not.

## Note

- This script verifies that `xz` is installed on your system and accessible in the system's PATH.
- The vulnerability check is specific to versions "5.6.0" and "5.6.1" of `xz`.
