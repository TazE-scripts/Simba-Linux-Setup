#!/bin/bash

echo "Uninstalling Simba and removing all associated files..."

# Remove Simba directory and its contents
SIMBA_DIR=~/Simba
if [ -d "$SIMBA_DIR" ]; then
    echo "Removing Simba directory..."
    rm -rf "$SIMBA_DIR"
else
    echo "Simba directory not found. Skipping removal."
fi

# Remove Simba alias from .bashrc
if grep -q "alias simba=" ~/.bashrc; then
    echo "Removing Simba alias from .bashrc..."
    sed -i '/alias simba=/d' ~/.bashrc
    echo "Simba alias removed. Reloading .bashrc..."
    source ~/.bashrc
else
    echo "Simba alias not found in .bashrc. Skipping removal."
fi

# Remove the Simba desktop entry
DESKTOP_FILE=~/.local/share/applications/simba.desktop
if [ -f "$DESKTOP_FILE" ]; then
    echo "Removing Simba desktop entry..."
    rm -f "$DESKTOP_FILE"
else
    echo "Simba desktop entry not found. Skipping removal."
fi

# Optional: Remove system-wide desktop entry if it was created
SYSTEM_DESKTOP_FILE=/usr/share/applications/simba.desktop
if [ -f "$SYSTEM_DESKTOP_FILE" ]; then
    echo "Removing system-wide Simba desktop entry..."
    sudo rm -f "$SYSTEM_DESKTOP_FILE"
else
    echo "System-wide Simba desktop entry not found. Skipping removal."
fi

# Inform user that uninstallation is complete
echo "Uninstallation complete. You may need to restart your session to apply changes."
