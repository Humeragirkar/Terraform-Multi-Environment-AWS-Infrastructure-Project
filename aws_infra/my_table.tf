#DynamoDB Table

resource "aws_dynamodb_table" "dynamo"{
    name = "${var.my-env}-my-uniqueaws-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute{
        name = "id"
        type = "S"
    }
}