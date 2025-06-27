provider aws {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
} `

variable region {}
variable ami_id {}
variable instance_type {}

terraform {
  backend "s3" {
    bucket = "kaizen-vikile"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}