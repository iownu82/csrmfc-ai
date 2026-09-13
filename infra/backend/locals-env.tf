# ============================================================================
# Environment configuration - WebAuthn + FIPS settings per environment
# ============================================================================
#
# WebAuthn:
#   - RP ID and origin must match the domain the browser is served from
#   - Changing rp_id INVALIDATES all previously registered credentials
#   - dev uses localhost so local Vite dev server (http://localhost:5173) works
#
# FIPS:
#   - AWS_USE_FIPS_ENDPOINT=true routes every boto3 client through -fips.
#     AWS service endpoints (AWS-LC FIPS Module, CMVP cert #4631)
#   - Required for FIPS 140-3 compliance after CMVP transition 2026-09-21
#   - Set to "true" in every environment - no reason to run non-FIPS anywhere

locals {
  env_config = {
    dev = {
      webauthn_rp_id           = "localhost"
      webauthn_rp_name         = "BIS3 Defense Dev"
      webauthn_expected_origin = "http://localhost:5173"
      aws_use_fips_endpoint    = "true"
    }
    staging = {
      webauthn_rp_id           = "staging.app.bis3ai.com"
      webauthn_rp_name         = "BIS3 Defense Staging"
      webauthn_expected_origin = "https://staging.app.bis3ai.com"
      aws_use_fips_endpoint    = "true"
    }
    prod = {
      webauthn_rp_id           = "app.bis3ai.com"
      webauthn_rp_name         = "BIS3 Defense"
      webauthn_expected_origin = "https://app.bis3ai.com"
      aws_use_fips_endpoint    = "true"
    }
  }

  env = local.env_config[var.environment]
}
