# 🧩 Troubleshooting Guide

This guide addresses potential issues encountered during setup and how to resolve them.

---

## ❌ DNS Resolution Fails in Spoke VMs
**Cause:** Custom DNS not configured in VNet settings  
**Fix:** Go to VNet → DNS → Set custom DNS IP (DNS Forwarding VM)

---

## ❌ Web App Not Accessible via Application Gateway
**Cause:** Listener misconfiguration or NSG blocking  
**Fix:**
- Check AGW frontend listener settings
- Check NSG on App subnet
- Validate probe status in backend pool

---

## ❌ Cannot SSH/RDP into DNS VM
**Cause:** No Bastion or public IP  
**Fix:** Use Azure Bastion or assign temporary public IP

---

## ❌ Storage Account Not Accessible Privately
**Cause:** Private Endpoint DNS not resolving  
**Fix:**
- Link Private DNS Zone to Spoke
- Add `azstorage.blob.core.windows.net` record if needed

---

## ❌ Route Table Not Enforcing Firewall Path
**Cause:** Route not associated with subnet  
**Fix:** Ensure correct UDR (user-defined route) attached to Spoke subnets

