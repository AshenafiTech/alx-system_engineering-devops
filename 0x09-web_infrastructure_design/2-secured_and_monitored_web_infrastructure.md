# Secured and Monitored Web Infrastructure

This document describes a web infrastructure enhanced with security and monitoring features, building on a distributed architecture to provide better protection, visibility, and reliability.

## Overview
This setup introduces multiple firewalls, HTTPS encryption, and monitoring clients to address security and operational needs. These additions help protect the infrastructure from attacks, ensure secure data transmission, and provide real-time insights into system health and performance.

## Components and Their Purpose
- **3 Firewalls:**
  - Placed at key network boundaries (e.g., between the internet and load balancer, between load balancer and web servers, and between web/app servers and the database).
  - Purpose: Restrict unauthorized access, filter malicious traffic, and enforce network segmentation for defense in depth.
- **1 SSL Certificate (HTTPS):**
  - Used to serve `www.foobar.com` over HTTPS.
  - Purpose: Encrypts data in transit, protecting user privacy and preventing eavesdropping or tampering.
- **3 Monitoring Clients:**
  - Deployed on web servers, application servers, and database servers.
  - Purpose: Collect metrics, logs, and events for centralized monitoring (e.g., using Sumologic or similar services).

## How Monitoring Works
- Monitoring clients collect data such as CPU usage, memory, disk, network activity, and application-specific metrics.
- Data is sent to a central monitoring service for aggregation, visualization, and alerting.
- To monitor web server QPS (queries per second), configure the monitoring client to track HTTP request rates and report them as a custom metric.

## Why These Elements Are Added
- **Firewalls:** Protect each layer of the infrastructure, reducing the attack surface and isolating components in case of compromise.
- **HTTPS (SSL):** Ensures all data between users and the site is encrypted, building trust and meeting compliance requirements.
- **Monitoring:** Enables proactive detection of issues, performance bottlenecks, and security incidents, allowing for faster response and troubleshooting.

## Issues and Considerations
- **SSL Termination at Load Balancer:**
  - If SSL is terminated at the load balancer, traffic between the load balancer and backend servers may be unencrypted, exposing sensitive data within the internal network.
- **Single MySQL Write Server:**
  - Having only one MySQL server capable of accepting writes creates a single point of failure and limits write scalability. If it fails, no writes can be processed.
- **Identical Servers (All-in-One):**
  - Running database, web, and application servers on the same machines can lead to resource contention, security risks, and makes scaling or isolating failures more difficult.

---

*This infrastructure improves security and observability, but further enhancements (such as database clustering, internal encryption, and role separation) are recommended for large-scale or highly sensitive applications.*
