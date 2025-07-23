# 🛠️ Step-by-Step Implementation Guide

This guide describes how each component was (hypothetically) deployed and configured.

---

## 🔹 Step 1: Create Hub and Spoke VNets
- Hub VNet CIDR: 10.0.0.0/16
  - Subnets: Firewall, Bastion, Application Gateway, DNS
- Spoke 1: 10.1.0.0/16 (Web App)
- Spoke 2: 10.2.0.0/16 (Storage Account)

📸 Screenshot: `screenshots/vnet-hub-creation.png`

---

## 🔹 Step 2: Deploy DNS Forwarding VM
- Ubuntu VM with `bind9` installed
- Configured conditional forwarding to On-Prem DNS
- Updated VNet settings to use custom DNS

📸 Screenshot: `screenshots/dns-forwarding-vm.png`

---

## 🔹 Step 3: Configure Azure Firewall
- Deployed in Hub VNet
- Created route tables to force traffic through firewall
- Defined NAT and Network Rules

📸 Screenshot: `screenshots/firewall-deployment.png`

---

## 🔹 Step 4: Deploy Application Gateway
- Public frontend for internet traffic
- Private frontend for on-prem access
- SSL certificate uploaded (.pfx)

📸 Screenshot: `screenshots/app-gateway-frontend.png`

---

## 🔹 Step 5: Upload SSL & Set Listeners
- Enabled HTTPS on port 443
- Added routing rules for Web App

📸 Screenshot: `screenshots/ssl-offloading-listeners.png`

---

## 🔹 Step 6: Secure Storage with Private Endpoint
- No public access allowed
- Private DNS zone linked to spoke

📸 Screenshot: `screenshots/storage-private-endpoint.png`

---

## 🔹 Step 7: Enable Bastion
- Deployed in Hub for secure VM access
- No public IP used on VMs

📸 Screenshot: `screenshots/vm-bastion-access.png`

---

## 🔹 Step 8: Peer All Networks
- Hub <-> Spoke1
- Hub <-> Spoke2
- Hub <-> On-Prem simulation

✔ Ensure “Use remote gateway” is enabled for hybrid routing.
