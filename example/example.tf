
provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "/Users/richard/.aws/credentials"
  profile                 = "sbx"
}

resource "aws_instance" "example" {
  # Ireland region, Amazon Linux AMI 2017.09.1, free tier eligible
  ami           = "ami-d834aba1"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
