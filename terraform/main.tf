provider "aws" {
region = "us-east-1"
access_key = "AKIAQMKZYLPGJFXRCUF2"
secret_key = "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"
}

resource "aws_instance" "one" {
ami = "ami-0e8a34246278c21e4"
instance_type = "t2.micro"
key_name = "mainkeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project1"
}
}
