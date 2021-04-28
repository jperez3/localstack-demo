# resource "aws_dynamodb_table" "test" {
#   count = 10

#   name           = "table${count.index}"
#   read_capacity  = "20"
#   write_capacity = "20"
#   hash_key       = "id"

#   attribute {
#     name = "id"
#     type = "S"
#   }
# }
