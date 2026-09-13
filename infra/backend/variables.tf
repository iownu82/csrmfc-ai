# ============================================================================
# Variables - environment-aware configuration
# ============================================================================
#
# Add new environments by:
#   1. Creating a Terraform workspace: terraform workspace new <name>
#   2. Adding an entry to local.env_config in locals-env.tf
#   3. terraform apply
#
# The environment variable is normally derived from the workspace name via
# terraform.workspace, but we expose it as an explicit variable for CI flows
# that may set it directly.

variable "environment" {
  type        = string
  default     = "dev"
  description = "Deployment environment: dev, staging, or prod. Must exist as a key in local.env_config."

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment must be one of: dev, staging, prod"
  }
}
