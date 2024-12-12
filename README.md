Install service (service will auto start on boot)
```
sudo ./install.sh <USERNAME> <GROUP_NAME>
```

Test
```
systemctl start pi_fireplace.service
```



Troubleshoot (check logs)
```
sudo journalctl -u pi_fireplace.service
```