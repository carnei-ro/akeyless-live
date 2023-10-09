variable "name" {
  type        = string
  description = "Auth Method name"
}

variable "access_expires" {
  type        = number
  description = "Access expiration date in Unix timestamp. Select 0 for access without expiry date."
  default     = 0
}

variable "access_id" {
  type        = string
  description = "Auth Method access ID"
  default     = null
}

variable "access_key" {
  type        = string
  sensitive   = true
  description = "Auth Method access key"
  default     = null
}

variable "bound_ips" {
  type        = set(string)
  description = "A CIDR whitelist with the IPs that the access is restricted to"
  default     = []
}

variable "force_sub_claims" {
  type        = bool
  description = "Enforce role-association must include sub claims"
  default     = false
}
