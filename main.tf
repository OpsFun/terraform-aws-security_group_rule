############################################################
# security groups
############################################################
# Egress
resource "aws_security_group_rule" "egress" {
  count = var.from_security_group != null ? 1 : 0

  type              = "egress"
  to_port           = var.port
  from_port         = var.port
  protocol          = "tcp"
  description       = "Egress to ${var.to_name}"
  security_group_id = var.from_security_group.id

  source_security_group_id = var.to_security_group.id
  prefix_list_ids          = length(var.to_prefix_list) > 0 ? var.to_prefix_list : null
  cidr_blocks              = length(var.to_cidr) > 0 ? var.to_cidr : null
}

# Ingress
resource "aws_security_group_rule" "ingress" {
  count             = var.to_security_group != null ? 1 : 0
  type              = "ingress"
  to_port           = var.port
  from_port         = var.port
  protocol          = "tcp"
  description       = "Ingress from ${var.from_name}"
  security_group_id = var.to_security_group.id

  source_security_group_id = var.from_security_group.id
  prefix_list_ids          = length(var.from_prefix_list) > 0 ? var.from_prefix_list : null
  cidr_blocks              = length(var.from_cidr) > 0 ? var.from_cidr : null
}
