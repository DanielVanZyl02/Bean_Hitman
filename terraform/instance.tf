resource "aws_instance" "bastion" {

  ami = "ami-0826e47ffa7af004d"
  instance_type = "t3.nano"
  subnet_id = aws_subnet.public-subnet.id

  key_name = "hitman-beans-key"
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.bastion_grp.id]

  tags = {
    Name = "SSH bastion"
  }

}