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

![Azure Cost Visibility Dashboard Architecture](docs/screenshots/azure-cost-architecture.png)

## Technologies Used
