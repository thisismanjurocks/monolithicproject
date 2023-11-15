provider "aws" {
region = "ap-northeast-3"
access_key = "AKIAQMKZYLPGNFC5IWEV"
secret_key = "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"
}

resource "aws_instance" "one" {
ami = "ami-04df8e2c5e045cd1e"
instance_type = "t2.micro"
key_name = "osaka-reg"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project1"
}
}
