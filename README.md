# Azure Cost Visibility Dashboard

## Project Overview

This project builds an Azure cost-governance and monitoring solution using Terraform, Azure Monitor, Cost Management, Logic Apps, Log Analytics, and Azure Workbooks.

The goal is to give cloud owners a simple way to monitor Azure spending, receive notifications before costs become a problem, and maintain visibility into the resources generating spend.

## Business Problem

Cloud billing can be difficult to interpret, especially when costs are spread across multiple services and resource groups.

This project addresses that problem by providing:

- A monthly Azure budget
- Budget alert thresholds at $50, $100, and $200
- Email notifications through an Azure Monitor Action Group
- A Logic App workflow for additional email notification
- Centralized logging through Log Analytics
- An Azure Workbook for resource visibility
- Terraform-based infrastructure deployment

## Architecture

```mermaid
flowchart TD
    A[Azure Subscription] --> B[Azure Cost Management Budget]
    B -->|25% / $50| C[Azure Monitor Action Group]
    B -->|50% / $100| C
    B -->|100% / $200| C

    C --> D[Direct Email Notification]
    C --> E[Azure Logic App]
    E --> F[Gmail Send Email V2]

    A --> G[Subscription Diagnostic Settings]
    G --> H[Log Analytics Workspace]

    A --> I[Azure Resource Graph]
    I --> J[Azure Workbook]
    J --> K[Cost Visibility Dashboard]

```bash
cat > queries/workbook-query.kql <<'EOF'
resourcecontainers
| where type == "microsoft.resources/subscriptions/resourcegroups"
| project resourceGroup, location
