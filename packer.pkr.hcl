variable "aws_region" {}

source "amazon-ebs" "nginx-builder" {
  ami_name      = "nginx-ami-${timestamp()}"
  instance_type = "t2.micro"
  region        = var.aws_region
  source_ami    = "ami-0c7217cdde317cfec"

  provisioner "shell" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install -y nginx1",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
    ]
  }
}
