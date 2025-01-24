
terraform {
   backend "s3" {
     bucket = "muna-kaizen"
     key    = "terraform.tfstate"
     region = "us-east-1"
     dynamodb_table = "lock-state"
   }
 }



