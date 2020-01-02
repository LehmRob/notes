# systemd example

This directory contains some simple systemd example services.

To install the example execute the following steps:

  * Copy the `.service` file into the directory `/etc/systemd/system`

  ```
  sudo cp veth-setup.service /etc/systemd/system
  ```

  * Copy the `.sh` file into the directory `/usr/local/bin` and make it executable

  ```
  sudo cp veth-setup.sh /usr/local/bin/
  chmod a+x /usr/local/bin/veth-setup.sh
  ```
