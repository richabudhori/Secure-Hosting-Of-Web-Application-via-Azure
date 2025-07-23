# Check DNS forwarder status
sudo systemctl status bind9

# Check DNS queries logs
sudo tail -f /var/log/syslog | grep named

# Test DNS resolution manually
dig @10.0.1.10 hubspokeprodstg123.blob.core.windows.net
