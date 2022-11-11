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

variable "control_count" {
  type        = number
  description = "The number of control nodes"
  default     = 2
}

variable "worker_count" {
  type        = number
  description = "The number of worker nodes"
  default     = 4
}

variable "cloudflare_account_id" {
  default     = "REDACTED"
  description = "The Cloudflare account ID to use"
  type        = string
}
