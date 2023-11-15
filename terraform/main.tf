provider "aws" {
region = "us-east-1"
access_key = "AKIAQMKZYLPGOSJGLEEP"
secret_key = "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"
}

resource "aws_instance" "one" {
ami = "ami-0e8a34246278c21e4"
instance_type = "t2.micro"
key_name = "mykeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project1"
}
}
