# Cognito User Pool
resource "aws_cognito_user_pool" "this" {
  admin_create_user_config {
    allow_admin_create_user_only = false
    # invite_message_template - N/A
  }
  # alias_attributes - N/A
  auto_verified_attributes = ["email"]
  # device_configuration - N/A
  # email_configuration - N/A
  name = var.aws_cognito_user_pool_name
  # email_verification_subject - N/A
  # email_verification_message - N/A
  # lambda_config - N/A
  # mfa_configuration - N/A
  # password_policy - N/A
  schema {
    name                     = "email"
    attribute_data_type      = "String"
    developer_only_attribute = false
    mutable                  = true # false for "sub"
    required                 = true # true for "sub"
  }
  # sms_authentication_message - N/A
  # sms_configuration - N/A
  # sms_verification_message - N/A
  # software_token_mfa_configuration - N/A

  tags = {
    Name           = var.aws_cognito_user_pool_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }

  username_attributes = ["email"]
  username_configuration {
    case_sensitive = false
  }
  # user_pool_add_ons - N/A
  # verification_message_template - N/A
  account_recovery_setting {
    recovery_mechanism {
      name     = "admin_only"
      priority = 1
    }
  }
}

# User Pool Domain
resource "aws_cognito_user_pool_domain" "this" {
  domain       = var.aws_cognito_user_pool_domain_domain
  user_pool_id = aws_cognito_user_pool.this.id
  # certificate_arn 
}

# Cognito User Pool Client
resource "aws_cognito_user_pool_client" "this" {
  name                                 = var.aws_cognito_user_pool_client_name
  user_pool_id                         = aws_cognito_user_pool.this.id
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