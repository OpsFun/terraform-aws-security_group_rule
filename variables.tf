variable "from_security_group" {
  description = "(optional) Source security group ARN"
  type = object({
    id = string
  })
  default = null
}

variable "from_cidr" {
  description = "(optional) Source CIDR"
  type        = list(string)
  default     = []
}

variable "from_prefix_list" {
  description = "(optional) Source prefix list ARN"
  type        = list(string)
  default     = []
}

variable "to_security_group" {
  description = "(optional) Destination security group ARN"
  type = object({
    id = string
  })
  default = null
}

variable "to_cidr" {
  description = "(optional) Destination CIDR"
  type        = list(string)
  default     = []
}

variable "to_prefix_list" {
  description = "(optional) Destination prefix list ARN"
  type        = list(string)
  default     = []
}

variable "from_name" {
  description = "Name of source service/system"
  type        = string
}

variable "to_name" {
  description = "Name of destination service/system"
  type        = string
}

variable "port" {
  description = "Port to allow ingress on"
  type        = string
}
