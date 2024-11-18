github-install.md

This markdown file provides a comprehensive guide to configuring Windows 11 with Git for GitHub SSH and GPG, with clear sections, code blocks, and additional helpful information.

Microsoft does not provide SSH and GPG tools with Windows 11, so this guide is a user-friendly approach to set up GitHub SSH and GPG on Windows 11.

## Install Required Software

1. Install Git for Windows
1. Install OpenSSH for Windows (if not already included in your Windows version)
1. Install Gpg4win 

### Install Git for Windows

Step 1: Download Git
1. Visit the official Git website at git-scm.com.
1. Click on the Download button for Windows. The site will automatically detect your operating system and provide the appropriate installer (64-bit or 32-bit).

Step 2: Run the Installer
1. Once the download is complete, locate the installer file (usually in your Downloads folder) and double-click it to run.
1. If prompted by User Account Control, click Yes to allow the installer to make changes to your device.

Step 3: Installation Wizard
1. License Agreement: Read the GNU General Public License and click Next.
Installation Location: Choose the default installation location or select a different one, then click Next.
1. Select Components: Keep the default options unless you need specific features, then click Next.
1. Start Menu Folder: Accept the default folder for Git in your Start menu by clicking Next.
1. Choosing a Text Editor: Select your preferred text editor from the dropdown menu (e.g., Vim, Notepad++) and click Next.
1. Adjusting Path Environment: Choose "Git from the command line and also from 3rd-party software" to ensure Git is accessible from the command prompt and other tools, then click Next.
1. Follow through the remaining prompts, adjusting settings as necessary (most users can stick with defaults), and finally click Install.

Step 4: Complete Installation
1. Once installation is complete, you can choose to launch Git Bash immediately by checking the box before clicking Finish.

Step 5: Verify Installation
1. Open Git Bash or a Command Prompt window.
1. Type the following command to check that Git was installed correctly:
    ```bash
    git --version
    ```

    This command should return the installed version of Git.

Additional Notes

The simplest way to install Git using Windows Package Manager (winget) if you prefer command-line installations:
```powershell
winget install --id Git.Git -e --source winget
```

After installation, you can use either Git Bash for command-line operations or Git GUI for graphical interactions with your repositories.

### Install OpenSSH for Windows

To install SSH on Windows 11, follow these steps:
1. Open the Windows Settings app by right-clicking the Start button and selecting "Settings".
1. Navigate to "Apps" > "Optional features"12.
1. Click on "View features" or "Add an optional feature"12.
1. In the search box, type "OpenSSH"12.
1. Locate and select "OpenSSH Server" by clicking the checkbox next to it12.
1. Click "Next" and then "Install" to begin the installation process12.
1. Wait for the installation to complete.
1. After installation, you need to start and configure the SSH server:
1. Open the Windows search and type "Services"1.
1. Find "OpenSSH SSH Server" in the list of services1.
1. Right-click on it and select "Start" to run the SSH server1.
1. To make the SSH server start automatically with Windows, right-click on "OpenSSH SSH Server" again, select "Properties", and change the "Startup type" to "Automatic"1.
1. Click "OK" to save the changes.
1. By default, the SSH server should be accessible through the Windows Firewall. However, if you encounter connection issues, you may need to add a firewall rule:

```powershell
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
```
1. You can now connect to your Windows 11 machine using an SSH client from another device by using the command:
    ```text
    ssh username@ip_address
    ```
1. Replace "username" with your Windows user account name and "ip_address" with your Windows 11 machine's IP address3.

1. Remember to use strong passwords and consider implementing key-based authentication for enhanced security when using SSH.

### Install Gpg4win for Windows


### Generate and Configure GPG Key

1. Open Git Bash and generate a new GPG key:

    ```bash
    gpg --full-generate-key
    ```

1. Choose RSA and RSA, 4096 bits, and set an expiration date.
1. Enter your name and email associated with your GitHub account.
1. List your GPG keys and note the key ID:
    ```bash
    gpg --list-secret-keys --keyid-format LONG
    ```

1. Copy the output and store it in a secure location.
1. Export your GPG public key:
    ```bash
    gpg --armor --export YOUR_KEY_ID
    ```
1. Copy the output and add it to your GitHub account under Settings > SSH and GPG keys > New GPG key.
1. Configure Git to Use GPG
1. Set your GPG key in Git:
    ```bash
    git config --global user.signingkey YOUR_KEY_ID
    ```
1. Enable automatic signing for commits:
    ```bash
1. Export your GPG public key:
    ```bash
    gpg --version
    gpg --armor --export YOUR_KEY_ID
    ```

1. Copy the output and add it to your GitHub account under Settings > SSH and GPG keys > New GPG key.
1. Configure Git to Use GPG
1. Set your GPG key in Git:
    ```bash
    git config --global user.signingkey YOUR_KEY_ID
    ```
1. Enable automatic signing for commits:
    ```bash
    git config --global commit.gpgsign true
    ```

1, Set Up SSH
1. Generate a new SSH key:
    ```bash
    ssh-keygen -t ed25519 -C "your_email@example.com"
    ```
1. Start the ssh-agent:
    ```bash
    eval "$(ssh-agent -s)"
    ```

1. Add your SSH key to the ssh-agent:
    ```bash
    ssh-add ~/.ssh/id_ed25519
    ```

1. Copy your SSH public key:
```bash
clip < ~/.ssh/id_ed25519.pub
```

1. Add the SSH key to your GitHub account under Settings > SSH and GPG keys > New SSH key.
1. Configure Git to Use SSH
1. Set your GitHub username:
    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "your_email@example.com"
    ```
1. Test your SSH connection:
    ```bash
    ssh -T git@github.com
    ```

   Additional Notes
1. Ensure you have the latest versions of Git and GitHub CLI
1. Keep your SSH and GPG keys secure
1. Regularly update and rotate your keys

Troubleshooting
If you encounter issues, verify:
   * Correct email address
   * Proper key generation
   * GitHub account settings
   * Firewall and network configurations

Recommended Tools:
   * GitHub Desktop
   * Visual Studio Code
   * Git Bash
   * Gpg4win

