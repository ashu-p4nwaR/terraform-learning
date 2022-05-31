resource "aws_db_instance" "initkloud_rds_mysql" {
  allocated_storage   = 5
  engine              = "mysql"
  instance_class      = "db.t2.micro"
  db_name             = "initkloud_db"
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}