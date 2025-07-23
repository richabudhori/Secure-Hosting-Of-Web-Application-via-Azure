# PowerShell script to route traffic via Azure Firewall

# Create a Route Table
$routeTable = New-AzRouteTable `
    -Name "FirewallRouteTable" `
    -ResourceGroupName "<RESOURCE_GROUP>" `
    -Location "<LOCATION>"

# Add a route for all traffic
Add-AzRouteConfig `
    -Name "DefaultRoute" `
    -AddressPrefix "0.0.0.0/0" `
    -NextHopType "VirtualAppliance" `
    -NextHopIpAddress "<FIREWALL_PRIVATE_IP>" `
    -RouteTable $routeTable

# Associate to subnet
Set-AzVirtualNetworkSubnetConfig `
    -Name "<SUBNET_NAME>" `
    -VirtualNetwork $vnet `
    -AddressPrefix "<SUBNET_CIDR>" `
    -RouteTable $routeTable
