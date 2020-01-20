# gnulinux-post-install

Set of script to automate setup of the newly installed GNU/Linux system.

Current branch is related to Debian GNU/Linux distribution.
If you are interested in another one please check available branches.

## Setup steps

0. Prior to setup Wi-Fi on the target system you need to make some preparation on the another GNU/Linux system which already has connection to Wi-Fi network:

    ```sh
    cd scripts/setup-wifi/ && ./prepare.sh
    ```

    The rest of the steps should be performed on the target system.

1. Run the following two scripts as superuser:

    ```sh
    su
    cd scripts/setup-wifi/ && ./setup-wifi.sh
    cd .. && ./setup-sudo.sh <username>
    ```

2. After reboot run the following script as normal user to setup the rest:

    ```sh
    ./setup.sh
    ```

3. Reboot when setup is complete:

    ```sh
    sudo reboot
    ```
