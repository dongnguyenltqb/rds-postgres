resource "aws_db_subnet_group" "group" {
  name       = var.rds_subnet_group_name
  subnet_ids = var.rds_subnets

  tags = {
    Name = var.rds_subnet_group_name
  }
}
