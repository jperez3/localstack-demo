# resource "aws_s3_bucket" "test" {
#   count  = 10

#   bucket = "my-tf-test-bucket${count.index}"
#   acl    = "private"

#   tags = {
#     Name        = "my-tf-test-bucket${count.index}"
#     Environment = var.env
#   }
# }
