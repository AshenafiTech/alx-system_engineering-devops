# 0x0B-ssh

This directory contains scripts and files related to SSH key management and secure server access for the ALX System Engineering & DevOps curriculum.

## Files

- `0-use_a_private_key`: Bash script to connect to a server using a specific private key and the `ubuntu` user.
- `1-create_ssh_key_pair`: Bash script to generate a 4096-bit RSA key pair named `school` with the passphrase `betty`.

## Usage

- Run the scripts with `./<script_name>` after making them executable (`chmod +x <script_name>`).
- Ensure you have the necessary permissions and dependencies (e.g., `ssh`, `ssh-keygen`).

## Notes

- Keep your private keys secure and never share them.
- The public key should be added to the server's `~/.ssh/authorized_keys` for passwordless authentication.
