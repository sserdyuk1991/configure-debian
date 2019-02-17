# debian-configuration-scripts

Set of scripts for configuring of clear Debian installation

## Configuration steps

1. Log into superuser account and run 'configure-sudo.sh' script 

    ```bash
    su
    ./configure-sudo.sh <username>
    ```

2. After reboot run 'configure.sh' as usual user

    ```bash
    ./configure.sh
    ```

NOTE: It's supposed that 'debian-backup-files' repository was previously cloned as well and was put beside this one
