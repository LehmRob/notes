# systemd

## Interessting links 

  * [systemd.service Manpage](https://www.freedesktop.org/software/systemd/man/systemd.service.html)
  * [Cheatsheet Shellhacks](https://www.shellhacks.com/systemd-service-file-example/)

# Simple oneshot example

```
[Unit]
Description=Virtual Network setup
#After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/network-setup.sh
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
```
