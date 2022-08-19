resource "aws_security_group" "allow_myip" {
  name        = "symfonyapp_SG_Inboundrules"
  description = "Allow My IP inbound traffic"

  ingress {
    description = "Allow only My IP"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["80.208.218.141/32"]
  }

  ingress {
    description = "Expose Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Expose Port 9100"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "lendinvest_Tech_SG"
  }
}
