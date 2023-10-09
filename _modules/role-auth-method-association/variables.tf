variable "am_name" {
  type        = string
  description = "The auth method to associate"
}

variable "role_name" {
  type        = string
  description = "The role to associate"
}

variable "case_sensitive" {
  type        = bool
  description = "Treat sub claims as case-sensitive"
  default     = true
}

variable "sub_claims" {
  type        = map(string)
  description = "key/val of sub claims, e.g group=admins,developers"
  default     = {}
}
