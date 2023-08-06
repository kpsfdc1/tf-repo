provider "aws"{
	region = "ap-south-1"
}

terraform{
	backend "s3" {
		bucket = "tf-new-bucket"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}
}

resource "aws_instance" "inst" {
	ami= "ami-08e5424edfe926b43"
	instance_type = "t2.micro"
	tags = {
		Name = "modify-tag"
	}
}
