# Database subnet group for RDS
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "${var.environment}-${var.project_name}-subnet-group"
  subnet_ids  = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  description = "Private data subnets for RDS"

  tags = {
    Name = "${var.environment}-${var.project_name}-subnet-group"
  }
}

# RDS instance
resource "aws_db_instance" "database_instance" {
  engine                 = var.database_engine
  engine_version         = var.database_engine_version
  multi_az               = var.multi_az_deployment
  identifier             = var.database_instance_identifier
  username               = local.secrets.username # check from secret-manager.tf
  password               = local.secrets.password # check from secret-manager.tf
  db_name                = local.secrets.dbname   # check from secret-manager.tf
  instance_class         = var.database_instance_class
  allocated_storage      = 200
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids = [aws_security_group.database_security_group.id]
  availability_zone      = data.aws_availability_zones.availability_zones.names[0]
  skip_final_snapshot    = true # When tf is destroying
  publicly_accessible    = var.publicly_accessible
}
