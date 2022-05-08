resource "aws_db_instance" "pg2" {
  allocated_storage       = 10
  max_allocated_storage   = 20
  engine                  = "postgres"
  engine_version          = "13.3"
  instance_class          = "db.t3.small"
  name                    = var.pg2_db_name
  username                = "postgres"
  password                = var.pg2_password
  publicly_accessible     = false
  vpc_security_group_ids  = [aws_security_group.pg2.id]
  skip_final_snapshot     = true
  availability_zone       = var.rds_availability_zones[0]
  backup_retention_period = 7
  storage_encrypted       = false
  storage_type            = "gp2"
  multi_az                = false
  apply_immediately       = true
}
