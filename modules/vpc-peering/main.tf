resource "aws_vpc_peering_connection" "this" {
  vpc_id      = var.vpc_id
  auto_accept = var.auto_accept

  tags = merge(
    {
      Name = var.name
    },
    var.tags
  )
}