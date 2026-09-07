output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.main.id
}

output "logic_app_id" {
  value = azurerm_logic_app_workflow.cost_alert.id
}

output "action_group_id" {
  value = azurerm_monitor_action_group.email_alerts.id
}
