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
  aws_cognito_user_pool_client_name                         = var.aws_cognito_user_pool_client_name
  aws_cognito_user_pool_client_allowed_oauth_flows          = var.aws_cognito_user_pool_client_allowed_oauth_flows
  aws_cognito_user_pool_client_callback_urls                = var.aws_cognito_user_pool_client_callback_urls
  aws_cognito_user_pool_client_logout_urls                  = var.aws_cognito_user_pool_client_logout_urls
  aws_cognito_user_pool_client_supported_identity_providers = var.aws_cognito_user_pool_client_supported_identity_providers
}