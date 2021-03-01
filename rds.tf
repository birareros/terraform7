resource "aws_db_instance" "terrards" {
  allocated_storage    = 5
  storage_encrypted    = false
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  name                 = "wp"
  username             = "user_name"
  password             = "strong_pass"
  port                 = "3306"
  skip_final_snapshot  = true
  vpc_security_group_ids = ["sg-*************"]
  db_subnet_group_name = "default-vpc-************"
  tags = {
        "Name" = "terraformrds"
       }
}
