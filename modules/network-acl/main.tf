resource "aws_network_acl" "this" {

  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port  = ingress.value.from_port
      to_port    = ingress.value.to_port
      protocol   = ingress.value.protocol
      cidr_block = ingress.value.cidr_block
      action     = ingress.value.action
      rule_no    = ingress.value.rule_no
    }
  }

  dynamic "egress" {
    for_each = var.egress
    content {
      from_port  = egress.value.from_port
      to_port    = egress.value.to_port
      protocol   = egress.value.protocol
      cidr_block = egress.value.cidr_block
      action     = egress.value.action
      rule_no    = egress.value.rule_no
    }
  }

  tags = merge(
    {
      Name = var.name
    },
    var.tags
  )
}