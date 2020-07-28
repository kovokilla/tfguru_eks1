resource "aws_security_group" "demo-cluster" {
  name        = "terraform-eks-demo-cluster"
  description = "TF Guru SG for EKS nodes"
  vpc_id      = aws_vpc.demo.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "TF Guru SG for EKS nodes"
  }
}

