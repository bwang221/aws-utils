
resource "aws_db_subnet_group" "rds_postgres" {
  name       = var.cluster_name
  subnet_ids = module.vpc.public_subnets

  tags = {
    Name = var.cluster_name
  }
}

resource "aws_security_group" "rds" {
  name   = var.cluster_name
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.cluster_name
  }
}

resource "aws_db_parameter_group" "rds_postgres" {
  name   = var.cluster_name
  family = "postgres14"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "rds_postgres" {
  identifier             = var.cluster_name
  instance_class         = var.db_instance_class
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "14.1"
  #name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.rds_postgres.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  parameter_group_name   = aws_db_parameter_group.rds_postgres.name
  publicly_accessible    = false
  skip_final_snapshot    = true
}

