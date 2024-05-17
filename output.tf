output "secret_engine" {
  value       = var.secret_engine
  description = "Secret Engine"
}
output "secrets_list" {
  value       = [for secret in vault_generic_secret.secret : secret.path]
  description = "List of secrets"
}
