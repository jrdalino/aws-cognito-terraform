module "cognito" {
  source = "git::https://github.com/jrdalino/aws-cognito-terraform.git?ref=main"
  # General
  aws_region  = var.aws_region
  aws_account = var.aws_account
  aws_role    = var.aws_role

  # Tagging
  namespace       = var.namespace
  bounded_context = var.bounded_context
  environment     = var.environment

  # Cognito User Pool
  aws_cognito_user_pool_name = var.aws_cognito_user_pool_name

  # User Pool Domain
  aws_cognito_user_pool_domain_domain = var.aws_cognito_user_pool_domain_domain

  # Cognito User Pool Client
  aws_cognito_user_pool_client_name    = var.aws_cognito_user_pool_client_name
  access_token_validity                = var.access_token_validity
  allowed_oauth_flows_user_pool_client = var.allowed_oauth_flows_user_pool_client
  allowed_oauth_flows                  = var.allowed_oauth_flows
  allowed_oauth_scopes                 = var.allowed_oauth_scopes
  # analytics_configuration
  callback_urls                 = var.callback_urls
  default_redirect_uri          = var.default_redirect_uri
  explicit_auth_flows           = var.explicit_auth_flows
  generate_secret               = var.generate_secret
  id_token_validity             = var.id_token_validity
  logout_urls                   = var.logout_urls
  prevent_user_existence_errors = var.prevent_user_existence_errors
  # read_attributes  
  refresh_token_validity       = var.refresh_token_validity
  supported_identity_providers = var.supported_identity_providers
  # token_validity_units
  # write_attributes
}