# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "user"
environment     = "production"

# Cognito User Pool
aws_cognito_user_pool_name = "bbsdm-user-pool"

# User Pool Domain
aws_cognito_user_pool_domain_domain = "bbsdm"

# Cognito User Pool Client
aws_cognito_user_pool_client_name    = "bbsdm-user-pool-client"
access_token_validity                = 60 # minutes
allowed_oauth_flows_user_pool_client = "true"
allowed_oauth_flows                  = ["client_credentials"] #  What do I choose? ["code", "implicit", "client_credentials"]
allowed_oauth_scopes                 = []                     # What do i choose? ["phone", "email", "openid", "aws.cognito.signin.user.admin", "prfoile"]
# analytics_configuration = ""
callback_urls                 = ["http://localhost:3000"]
default_redirect_uri          = "http://localhost:3000"
explicit_auth_flows           = ["ALLOW_CUSTOM_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"] # What do I choose? ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH, "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
generate_secret               = "true"
id_token_validity             = 60 # minutes
logout_urls                   = ["http://localhost:3000"]
prevent_user_existence_errors = "ENABLED"
# read_attributes = ""
refresh_token_validity       = 30 # days
supported_identity_providers = ["COGNITO"]
# token_validity_units = ""
# write_attributes = ""