provider "aws" {
region = "ap-southeast-1"
access_key = "AKIAQMKZYLPGNFC5IWEV"
secret_key = "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"
}

resource "aws_instance" "one" {
ami = "ami-0ebcd68de1afe59cd"
instance_type = "t2.micro"
key_name = "mainkeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project1"
}
}
