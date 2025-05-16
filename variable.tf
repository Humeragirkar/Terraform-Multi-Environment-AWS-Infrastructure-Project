variable "dynammo_table_name" {
    type = string
    default = "my-dynamo-table-creation"
    description = "This is table name for Dynamodb"
}

variable "ami_id"{
    default = "ami-084568db4383264d4"
    type = string
    description = "This is ami id for EC2 (ubuntu)"
}