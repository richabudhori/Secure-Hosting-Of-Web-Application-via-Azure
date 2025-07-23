# Check backend health
az network application-gateway show-backend-health \
  --name "hubspoke-prod-appgw" \
  --resource-group "hubspoke-prod-rg"

# Check probe configuration
az network application-gateway probe list \
  --gateway-name "hubspoke-prod-appgw" \
  --resource-group "hubspoke-prod-rg"
