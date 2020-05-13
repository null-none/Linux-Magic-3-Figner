# Apple Magic Mouse 3 Finger in Linux (Ubuntu)

If you want test out 3 finger middle click in linux use commands:

```bash
sudo apt-get install dkms
cd linux/drivers/hid
make clean
make
sudo rmmod hid-magicmouse
sudo insmod ./hid-magicmouse.ko middle_click_3finger=1
```

If you want use as service use:

```bash
touch /etc/systemd/system/applemouse.service
```

Source `/etc/systemd/system/applemouse.service`

```bash
[Unit]
Description=Linux Apple Magic Mouse 3 Finger
After=network.target
[Service]
Type=simple
PIDFile=/var/run/getl/applemouseoad.pid
ExecStart=/bin/sh -c {PATH}/run_service.sh
TimeoutStartSec=0
Restart=on-failure
[Install]
WantedBy=default.target
```

To enable your service after reboot, you run the command:

```bash
systemctl enable applemouse
```

To start/stop/check status of your service, run command below:

```bash
systemctl [start|stop|status] applemouse
```
