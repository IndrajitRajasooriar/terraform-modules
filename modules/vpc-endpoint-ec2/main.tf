resource "aws_vpc_endpoint" "this" {
  vpc_id              = var.vpc_id
  service_name        = var.service_name
  vpc_endpoint_type   = var.vpc_endpoint_type
  security_group_ids  = var.security_group_ids
  private_dns_enabled = var.private_dns_enabled
  subnet_ids          = var.subnet_ids

  tags = merge(
    {
      Name = "${var.name}-vpc-endpoint"
    },
    var.tags
  )

}