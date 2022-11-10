variable "instance_type" {
  default     = "t4g.xlarge"
  description = "The EC2 instance type to use"
  type        = string
}

variable "cloudflare_api_token" {
  default     = "REDACTED"
  description = "The Cloudflare API token to use"
  type        = string
  sensitive   = true
}

variable "public_key" {
  description = "The public key to use for SSH access"
  type        = string
}
