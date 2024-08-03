# Simba-Linux-Setup
Linux installation setup for Simba and Wasp libraries. 


# Simba Installation and Uninstallation Guide

## Introduction

This guide provides detailed instructions on how to install and uninstall Simba, including setting the necessary permissions.


1. **Make the Script Executable:**
   If the script is not executable, set the appropriate permissions:
   ```bash
   chmod +x simba-setup.sh
   ```

2. **Run the Installation Script:**
   Execute the script to install Simba and all its dependencies:
   ```bash
   ./install_simba.sh
   ```

   The script will:
   - Install required dependencies.
   - Set up the necessary directories and download the required files.
   - Add a `simba` alias to your `.bashrc`.
   - Create a `.desktop` entry for easy access.


1. **Make the Script Executable:**
   If the script is not executable, set the appropriate permissions:
   ```bash
   chmod +x uninstall-simba.sh
   ```

2. **Run the Uninstallation Script:**
   Execute the script to remove Simba and all associated files:
   ```bash
   ./uninstall_simba.sh
   ```

   The script will:
   - Remove the Simba directory and its contents.
   - Remove the `simba` alias from your `.bashrc`.
   - Delete the `.desktop` entry from local and system-wide directories.

## Note

After running the installation or uninstallation scripts, you may need to restart your session or log out and back in for all changes to take effect. This ensures that environment variables and desktop entries are properly reloaded.
