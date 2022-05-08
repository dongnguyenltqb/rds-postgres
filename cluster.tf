resource "aws_rds_cluster" "pg1" {
  cluster_identifier        = "pg1"
  availability_zones        = var.rds_availability_zones
  port                      = 5432
  engine                    = "postgres"
  engine_version            = "13.4"
  db_cluster_instance_class = "db.m6gd.large"
  apply_immediately         = true
  backup_retention_period   = 7
  db_subnet_group_name      = aws_db_subnet_group.group.name
  vpc_security_group_ids    = [aws_security_group.pg1.id]
  storage_type              = "io1"
  storage_encrypted         = false
  allocated_storage         = 100
  iops                      = 1000
  master_username           = "postgres"
  master_password           = var.pg1_password
}
