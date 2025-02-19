resource "aws_security_group" "rds-sec-grp" {

  name = "rds-sec-group"
  description = "Allow traffic"
  vpc_id = aws_vpc.main.id

  ingress {
    description = "VPC"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = [aws_security_group.bastion_grp.id]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-sec-group"
  }

}

resource "aws_security_group" "bastion_grp" {

  name = "bastion-sec-grp"
  description = "SSH access from IP"

  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastion-sec-grp"
  }

}