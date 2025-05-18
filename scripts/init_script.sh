#!/bin/bash

# Check if ANSIBLE_REPO is set
if [ -z "/home/kristian/git/ebdruplab/ansible-semaphore_ebdruplab_examples" ]; then
    # ANSIBLE_REPO is not set, use the current directory
    ANSIBLE_REPO=/home/kristian/git/ebdruplab/ansible-semaphore_ebdruplab_examples

    # Ask the user for confirmation
    read -p "ANISBLE_REPO is not set. Do you want to use the current directory /home/kristian/git/ebdruplab/ansible-semaphore_ebdruplab_examples? (y/n) " -n 1 -r
    echo # Move to a new line
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        # If the user does not confirm, exit the script
        echo "Aborted."
        exit 1
    fi
fi

echo "Installing requirements for roles..."
ansible-galaxy role install -r "${ANSIBLE_REPO}/roles/requirements.yml" -p "${ANSIBLE_REPO}/roles"

echo "Installing requirements for collections..."
ansible-galaxy collection install -r "${ANSIBLE_REPO}/collections/requirements.yml" -p "${ANSIBLE_REPO}/collections"

echo "Requirements installation complete."

