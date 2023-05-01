# Security Group Rule
Terraform module for simplifying rules between security groups.

# Inputs
## Required
- *from_name*: Name of source service/system
- *port*: Port to allow ingress on
- *to_name*: Name of destination service/system

## Optional
- *from_cidr*: (optional) Source CIDR
- *from_prefix_list*: (optional) Source prefix list ARN
- *from_security_group*: (optional) Source security group ARN
- *to_cidr*: (optional) Destination CIDR
- *to_prefix_list*: (optional) Destination prefix list ARN
- *to_security_group*: (optional) Destination security group ARN