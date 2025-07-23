# 🛠️ Step-by-Step Implementation Guide

This guide describes how each component was (hypothetically) deployed and configured.

---

## 🔹 Step 1: Create Hub and Spoke VNets
- Hub VNet CIDR: 10.0.0.0/16
  - Subnets: Firewall, Bastion, Application Gateway, DNS
- Spoke 1: 10.1.0.0/16 (Web App)
- Spoke 2: 10.2.0.0/16 (Storage Account)

📸 Screenshot: 
<img width="1024" height="1024" alt="ChatGPT Image Jul 23, 2025, 04_25_03 PM" src="https://github.com/user-attachments/assets/47ccd459-30ab-4f3d-ba4f-6e932bed9ad8" />

---

## 🔹 Step 2: Deploy DNS Forwarding VM
- Ubuntu VM with `bind9` installed
- Configured conditional forwarding to On-Prem DNS
- Updated VNet settings to use custom DNS

📸 Screenshot: 
![dns](https://github.com/user-attachments/assets/52545e84-e98f-4c37-81b6-9e395a3689ef)

---


## 🔹 Step 3: Configure Azure Firewall
- Deployed in Hub VNet
- Created route tables to force traffic through firewall
- Defined NAT and Network Rules

📸 Screenshot: 
<img width="1024" height="1024" alt="ChatGPT Image Jul 23, 2025, 04_32_38 PM" src="https://github.com/user-attachments/assets/40b52d21-12a6-4e13-98a7-68bf744d799f" />


---

## 🔹 Step 4: Deploy Application Gateway
- Public frontend for internet traffic
- Private frontend for on-prem access
- SSL certificate uploaded (.pfx)

📸 Screenshot: 
<img width="1130" height="913" alt="image" src="https://github.com/user-attachments/assets/d31133d3-4fc1-4cef-b3f7-d61aaeb0c477" />

---

## 🔹 Step 5: Upload SSL & Set Listeners
- Enabled HTTPS on port 443
- Added routing rules for Web App

📸 Screenshot: 
<img width="582" height="723" alt="image" src="https://github.com/user-attachments/assets/131fd1d0-9605-4636-977f-256e676354cd" />


---

## 🔹 Step 6: Secure Storage with Private Endpoint
- No public access allowed
- Private DNS zone linked to spoke

📸 Screenshot: 
<img width="1572" height="1536" alt="image" src="https://github.com/user-attachments/assets/c4fa0775-1b4a-40b5-8dd7-410b5888bdf9" />


---

## 🔹 Step 7: Enable Bastion
- Deployed in Hub for secure VM access
- No public IP used on VMs

📸 Screenshot: 
<img width="2508" height="1280" alt="image" src="https://github.com/user-attachments/assets/6bc8093b-b885-4481-a526-5590191e7f30" />


---

## 🔹 Step 8: Peer All Networks
- Hub <-> Spoke1
- Hub <-> Spoke2
- Hub <-> On-Prem simulation

✔ Ensure “Use remote gateway” is enabled for hybrid routing.
