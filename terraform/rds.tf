# resource "aws_db_instance" "test" {

#   count = 10

#   allocated_storage    = 2
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t3.micro"
#   name                 = "test${count.index}"
#   username             = "foo"
#   password             = "dontlookatthis"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
# }
