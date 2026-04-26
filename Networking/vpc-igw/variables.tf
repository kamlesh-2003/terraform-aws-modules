variable "cidr_range" {
  description = "CIDR block for the VPC (e.g., 10.0.0.0/16)"
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_support" {
  description = "Enable DNS resolution support for the VPC"
  type = bool
  default = false
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC so instances receive DNS names"
  type = bool
  default = false
}

variable "instance_tenancy" {
  description = "Tenancy option for instances in the VPC (default or dedicated)"
  type = string
  default ="default"
}

variable "vpc-name" {
  description = "Name tag for the VPC"
  type = string
  default = "custom-vpc"
}

variable "internet_gateway_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "igw"
}
