#################################
# 
# Variables for Naming
#
#################################

variable "location" {
  description = "(required)"
  type        = string
}

variable "environment" {
  description = "(required)"
  type        = string
}

variable "app_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}