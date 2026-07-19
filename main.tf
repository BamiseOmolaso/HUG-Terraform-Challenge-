#Define the compute resources for the project
  data "aws_ami" "amazon_linux" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name = "name"
      values = ["al2023-ami-*-x86_64"]
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
  }
  resource "aws_instance" "ec2_instance" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.main.id]
  tags = {
    Name = "${var.project_name}-web"
  }
  user_data = <<-EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y nginx
    
sudo cat > /usr/share/nginx/html/index.html <<EOT
<html>
  <body>
    <h1>${var.full_name}</h1>
    <p>HUG Lagos/Ibadan Terraform Challenge</p>
  </body>
</html>
EOT

sudo systemctl start nginx
sudo systemctl enable nginx

EOF
}

