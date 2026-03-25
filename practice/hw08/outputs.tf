output "dev_url" {
  description = "DEV environment URL"
  value       = "http://${module.web_dev.public_ip}"
}

output "prod_url" {
  description = "PROD environment URL"
  value       = "http://${module.web_prod.public_ip}"
}
