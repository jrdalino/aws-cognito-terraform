# Cognito User Pool
output "aws_cognito_user_pool_arn" {
  value       = aws_cognito_user_pool.this.arn
  description = "ARN of the user pool."
}

output "aws_cognito_user_pool_creation_date" {
  value       = aws_cognito_user_pool.this.creation_date
  description = "Date the user pool was created."
}

output "aws_cognito_user_pool_endpoint" {
  value       = aws_cognito_user_pool.this.endpoint
  description = "Endpoint name of the user pool. Example format: cognito-idp.REGION.amazonaws.com/xxxx_yyyyy"
}

output "aws_cognito_user_pool_id" {
  value       = aws_cognito_user_pool.this.id
  description = "ID of the user pool."
}

output "aws_cognito_user_pool_last_modified_date" {
  value       = aws_cognito_user_pool.this.last_modified_date
  description = "Date the user pool was last modified."
}

# User Pool Domain
output "aws_cognito_user_pool_domain_domain" {
  value       = aws_cognito_user_pool_domain.this.domain
  description = "(Required) The domain string."
}

output "aws_cognito_user_pool_domain_user_pool_id" {
  value       = aws_cognito_user_pool_domain.this.user_pool_id
  description = "(Required) The user pool ID."
}

output "aws_cognito_user_pool_domain_certificate_arn" {
  value       = aws_cognito_user_pool_domain.this.certificate_arn
  description = "(Optional) The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain."
}

# Cognito User Pool Client
output "aws_cognito_user_pool_client_client_secret" {
  value       = aws_cognito_user_pool_client.this.client_secret
  description = "The client secret of the user pool cli client."
}

output "aws_cognito_user_pool_client_id" {
  value       = aws_cognito_user_pool_client.this.id
  description = "The id of the user pool cli client."
}