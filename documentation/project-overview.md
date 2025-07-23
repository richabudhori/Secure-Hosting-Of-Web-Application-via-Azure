# 📘 Project Overview

This document outlines the core design principles and goals of the Hub-and-Spoke Azure Network Architecture project.

## 🎯 Goals
- Implement centralized control using Azure Firewall, DNS Forwarder, and Bastion.
- Create two spokes: one for hosting a Web App and another for a private Storage Account.
- Enforce traffic routing via Azure Firewall.
- Establish secure hybrid connectivity (simulated On-Premises).
- Configure DNS Forwarding VM to handle name resolution across environments.
- Enable SSL Offloading using Azure Application Gateway.

## 🏗️ Why Hub-and-Spoke?
- Reduces network complexity
- Provides central management and logging
- Supports scalable multi-region deployments
