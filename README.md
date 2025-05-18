# Ansible Repository

This repository contains Ansible playbooks, roles, and configurations.

## Directory Structure

- `roles`: Contains Ansible roles and a `requirements.yml` file for external roles.
- `inventories`: Inventory files defining hosts and groups.
- `collections`: Ansible collections along with a `requirements.yml` file for external collections.
- `vars`: Variables files.
- `scripts`: is holding bash scripts e.g the requerements.yml file init.

## Usage

To use this repository, clone it and run the necessary playbooks using the Ansible commands.

For example:

```
# How to run as AD user
ansible-playbook -i [INVENTORY] [PLAYBOOK] --user=@example.com --ask-become-pass --ask-pass --become-user=root
```
