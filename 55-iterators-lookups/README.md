change-ssh-keys-ansible
=======================

This is a small playbook to add and delete `authorized_keys` in `.ssh`.

Usage
-----

1. Add some public keys to `keys_to_add` directory.
2. Add some public keys to `keys_to_drop` directory
3. Create `inventory` file.

```bash
ansible-playbook -i inventory update_keys.yaml
```
