# =============================================================================
# Outputs — Sample App
# =============================================================================

output "resource_group_name" {
  description = "Name of the resource group."
  value       = azurerm_resource_group.main.name
}

output "function_app_name" {
  description = "Name of the Azure Function App."
  value       = azurerm_linux_function_app.main.name
}

output "function_app_url" {
  description = "Default URL of the Function App."
  value       = "https://${azurerm_linux_function_app.main.default_hostname}"
}

output "apim_gateway_url" {
  description = "APIM gateway base URL — frontend targets this in production."
  value       = azurerm_api_management.main.gateway_url
}

output "key_vault_name" {
  description = "Name of the Azure Key Vault."
  value       = azurerm_key_vault.main.name
}

output "entra_client_id" {
  description = "Entra ID app registration client ID — use as NEXT_PUBLIC_ENTRA_CLIENT_ID."
  value       = azuread_application.main.client_id
}

output "entra_tenant_id" {
  description = "Entra ID tenant ID — use as NEXT_PUBLIC_ENTRA_TENANT_ID."
  value       = data.azurerm_client_config.current.tenant_id
}

output "application_insights_connection_string" {
  description = "Application Insights connection string."
  value       = azurerm_application_insights.main.connection_string
  sensitive   = true
}
