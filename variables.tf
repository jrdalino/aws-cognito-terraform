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
  description = "The name of the application client."
}

variable "aws_cognito_user_pool_client_allowed_oauth_flows" {
  type        = string
  description = "Allowed OAuth flows"
}

variable "aws_cognito_user_pool_client_callback_urls" {
  type        = string
  description = "Callback URL"
}

variable "aws_cognito_user_pool_client_logout_urls" {
  type        = string
  description = "Logout URL"
}

variable "aws_cognito_user_pool_client_supported_identity_providers" {
  type        = string
  description = "Supported Identity Providers"
}