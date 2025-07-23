# 🌐 Secure Hosting Of Web Application with Azure

## 🚀 Project Overview

This project demonstrates the implementation of a **Hub and Spoke Network Topology** on Microsoft Azure. The hub contains centralized services like **Azure Firewall**, **Application Gateway**, **DNS Forwarding VM**, and **Azure Bastion**, while the spokes contain isolated workloads:

- **Spoke 1** hosts a **Web App**
- **Spoke 2** hosts a **Storage Account** with no public access

It simulates secure connectivity from an on-premises network and applies enterprise-grade networking principles.

---

## 🗂️ Repository Structure
azure-hub-spoke-project/
│
├── diagrams/
│   └── hub-spoke-topology.png
│
├── screenshots/
│   ├── vnet-hub-creation.png
│   ├── firewall-deployment.png
│   ├── app-gateway-frontend.png
│   ├── ssl-offloading-listeners.png
│   ├── dns-forwarding-vm.png
│   ├── storage-private-endpoint.png
│   └── vm-bastion-access.png
│
├── scripts/
│   ├── dns-config.sh
│   └── route-table-setup.ps1
│
├── documentation/
│   ├── project-overview.md
│   ├── implementation-steps.md
│   └── troubleshooting.md
│
├── README.md
└── LICENSE

---

## 🎯 Project Objectives

1. Establish secure connection between on-premises network and Hub VNet
2. Deploy custom DNS forwarding for Spoke VNets
3. Route all traffic through Azure Firewall
4. Implement SSL offloading with Azure Application Gateway
5. Use Bastion for secure VM access
6. Prevent public access to Azure Storage in Spoke 2

---

## 🧱 Key Components

- **Hub VNet:** Centralized components (Firewall, AGW, DNS, Bastion)
- **Spoke 1 VNet:** Web App (via App Gateway)
- **Spoke 2 VNet:** Private Storage Account
- **On-premises simulation:** Separate VNet for simulation

---

## 📷 Included Screenshots

Located in the `screenshots/` folder:

- VNet & Subnet creation
- DNS Forwarding VM deployment
- Application Gateway with public & private frontend IPs
- Azure Firewall routing rules
- SSL Certificate upload
- Storage private endpoint setup

---

## 📁 Files and Content Summary

### `diagrams/hub-spoke-topology.png`
> High-level architecture diagram showing Hub-Spoke VNets, on-premises link, and traffic flow.

### `scripts/dns-config.sh`
```bash
#!/bin/bash
sudo apt update
sudo apt install bind9 -y
echo 'forwarders { <onprem-dns-ip>; };' >> /etc/bind/named.conf.options
sudo systemctl restart bind9
```
##Learning Outcomes
Hands-on with secure network architecture in Azure

Use of Azure Firewall, App Gateway, and DNS Forwarding

Hybrid cloud simulation using on-prem-style VM + Azure
'''
## 📷 Included Screenshots
This repository is a demonstration of a hybrid cloud setup using Azure best practices for networking and security. All artifacts (scripts, configs, and screenshots) are organized for review and reuse.

## 👩‍💻 Author
Richa Budhori
Cloud Security Intern | Azure Enthusiast
