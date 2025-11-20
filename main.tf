resource "aws_security_group" "bad_example" {
  name        = "insecure-sg"
  description = "Security group with open ingress"

  ingress {
    description = "Open to the world"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # VULNERABILIDADE
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
