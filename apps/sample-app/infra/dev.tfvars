# =============================================================================
# Development Environment Variables — dev.tfvars
# =============================================================================

subscription_id = "YOUR_SUBSCRIPTION_ID"    # TODO: Set your Azure subscription ID

location        = "eastus2"
environment     = "dev"
resource_suffix = "001"

# APIM Configuration
apim_publisher_name  = "Sample App"
apim_publisher_email = "you@example.com"    # TODO: Set your email

# Frontend URL (set after SWA deployment, then re-apply)
# Must include trailing slash per azuread provider requirement.
# frontend_url = "https://your-swa.azurestaticapps.net/"

# Authentication Mode: "entra" (default) or "demo"
auth_mode = "demo"

# Demo credentials (only used when auth_mode = "demo")
demo_credentials = {
  username = "demo"
  password = "demopass"
}
