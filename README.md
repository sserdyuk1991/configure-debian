# configure-debian

Set of scripts for configuring of fresh installed Debian system

## Configuring steps

0. In order to configure WiFi on the fresh installed system you need to run the following command on the already configured one:

    ```bash
    cd configure-wifi/ && ./prepare.sh
    ```

    The next steps should be performed on the target system.

1. Run the following two scripts as superuser:

    ```bash
    su
    cd configure-wifi/ && ./configure-wifi.sh && cd ..
    ./configure-sudo.sh <username>
    ```

2. After reboot run 'configure.sh' as normal user:

    ```bash
    ./configure.sh
    ```

NOTE: It's supposed that 'debian-backup-files' repository was previously cloned as well and was put beside this one
