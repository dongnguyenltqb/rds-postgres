resource "aws_security_group" "jump" {
  name        = "jump_sg"
  description = "Allow ssh from internet"
  vpc_id      = var.vpc_id

  ingress {
    description = "allow ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.common_tags, {
    Name = "jump_sg"
  })
}

resource "aws_security_group" "pg1" {
  name        = "pg1_sg"
  description = "Allow connect from jump server"
  vpc_id      = var.vpc_id

  ingress {
    description     = "allow all"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.jump.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.common_tags, {
    Name = "pg1_sg"
  })
}
resource "aws_security_group" "pg2" {
  name        = "pg2_sg"
  description = "Allow connect from jump server"
  vpc_id      = var.vpc_id

  ingress {
    description     = "allow all"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.jump.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.common_tags, {
    Name = "pg2_sg"
  })
}
