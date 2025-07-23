# Check firewall logs
az monitor activity-log list \
  --resource-group "hubspoke-prod-rg" \
  --resource-type "Microsoft.Network/azureFirewalls"

# Test connectivity
telnet 10.0.2.4 80
nc -zv 10.0.2.4 443
