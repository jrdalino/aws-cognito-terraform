# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "shared"
environment     = "production"

# Cognito User Pool
aws_cognito_user_pool_name = "bbdsm-user-pool"

# User Pool Domain
aws_cognito_user_pool_domain_domain = "bbdsm"

# Cognito User Pool Client
aws_cognito_user_pool_client_name                         = "bbdsm-user-pool-client"
aws_cognito_user_pool_client_allowed_oauth_flows          = "client_credentials" # "code", "implicit" >> What do I choose?
aws_cognito_user_pool_client_callback_urls                = "http://localhost:3000"
aws_cognito_user_pool_client_logout_urls                  = "http://localhost:3000"
aws_cognito_user_pool_client_supported_identity_providers = "COGNITO"