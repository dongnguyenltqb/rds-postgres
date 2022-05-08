output "rds_subnets_group_name" {
  value = aws_db_subnet_group.group.name
}
output "rds_subnets_group_arn" {
  value = aws_db_subnet_group.group.arn
}

output "pg1_write_side_url" {
  value = aws_rds_cluster.pg1.endpoint
}
