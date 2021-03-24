# Cognito User Pool
output "aws_cognito_user_pool_arn" {
  value       = module.cognito.aws_cognito_user_pool_arn
  description = "ARN of the user pool."
}

output "aws_cognito_user_pool_creation_date" {
  value       = module.cognito.aws_cognito_user_pool_arn
  description = "Date the user pool was created."
}

output "aws_cognito_user_pool_endpoint" {
  value       = module.cognito.aws_cognito_user_pool_endpoint
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
}

output "aws_cognito_user_pool_id" {
  value       = module.cognito.aws_cognito_user_pool_id
  description = "ID of the user pool."
}

output "aws_cognito_user_pool_last_modified_date" {
  value       = module.cognito.aws_cognito_user_pool_last_modified_date
  description = "Date the user pool was last modified."
}

# User Pool Domain
output "aws_cognito_user_pool_domain_domain" {
  value       = module.cognito.aws_cognito_user_pool_domain_domain
  description = "(Required) The domain string."
}

output "aws_cognito_user_pool_domain_user_pool_id" {
  value       = module.cognito.aws_cognito_user_pool_domain_user_pool_id
  description = "(Required) The user pool ID."
}

output "aws_cognito_user_pool_domain_certificate_arn" {
  value       = module.cognito.aws_cognito_user_pool_domain_certificate_arn
  description = "(Optional) The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain."
}

# Cognito User Pool Client
output "aws_cognito_user_pool_client_client_secret" {
  value       = module.cognito.aws_cognito_user_pool_client_client_secret
  description = "The client secret of the user pool cli client."
}

output "aws_cognito_user_pool_client_id" {
  value       = module.cognito.this.aws_cognito_user_pool_client_id
  description = "The id of the user pool cli client."
}