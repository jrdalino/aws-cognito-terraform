# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# Cognito User Pool
variable "aws_cognito_user_pool_name" {
  type        = string
  description = "The name of the user pool."
}

# User Pool Domain
variable "aws_cognito_user_pool_domain_domain" {
  type        = string
  description = "User Pool Domain"
}

# Cognito User Pool Client
variable "aws_cognito_user_pool_client_name" {
  type        = string
  description = "(Required) Name of the application client."
}

variable "access_token_validity" {
  type        = string
  description = "(Optional) Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in token_validity_units."
}

variable "allowed_oauth_flows_user_pool_client" {
  type        = string
  description = "(Optional) Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools."
}

variable "allowed_oauth_flows" {
  type        = list(string)
  description = "(Optional) List of allowed OAuth flows (code, implicit, client_credentials)."
}

variable "allowed_oauth_scopes" {
  type        = list(string)
  description = "(Optional) List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin)."
}

# variable "analytics_configuration" {
#   type        = string
#   description = "(Optional) Configuration block for Amazon Pinpoint analytics for collecting metrics for this user pool. Detailed below."
# }

variable "callback_urls" {
  type        = list(string)
  description = "(Optional) List of allowed callback URLs for the identity providers."
}

variable "default_redirect_uri" {
  type        = string
  description = "(Optional) Default redirect URI. Must be in the list of callback URLs."
}

variable "explicit_auth_flows" {
  type        = list(string)
  description = "(Optional) List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH)."
}

variable "generate_secret" {
  type        = string
  description = "(Optional) Should an application secret be generated."
}

variable "id_token_validity" {
  type        = string
  description = "(Optional) Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in token_validity_units."
}

variable "logout_urls" {
  type        = list(string)
  description = "(Optional) List of allowed logout URLs for the identity providers."
}

variable "prevent_user_existence_errors" {
  type        = string
  description = "(Optional) Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to ENABLED and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to LEGACY, those APIs will return a UserNotFoundException exception if the user does not exist in the user pool."
}

# variable "read_attributes" {
#   type        = string
#   description = "(Optional) List of user pool attributes the application client can read from."
# }

variable "refresh_token_validity" {
  type        = string
  description = "(Optional) Time limit in days refresh tokens are valid for."
}

variable "supported_identity_providers" {
  type        = list(string)
  description = "(Optional) List of provider names for the identity providers that are supported on this client."
}

# variable "token_validity_units" {
#   type        = string
#   description = "(Optional) Configuration block for units in which the validity times are represented in. Detailed below."
# }

# variable "write_attributes" {
#   type        = string
#   description = "(Optional) List of user pool attributes the application client can write to."
# }