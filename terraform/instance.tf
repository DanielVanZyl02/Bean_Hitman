resource "aws_instance" "bastion" {

  ami = "ami-002a9ce45762e090d"
  instance_type = "t3.nano"
  subnet_id = aws_subnet.public-subnet.id

  key_name = "bean-hitman-key"
  associate_public_ip_address = true
  iam_instance_profile = aws_iam_instance_profile.ssm-profile.name
  vpc_security_group_ids = [aws_security_group.bastion_grp.id, aws_security_group.ssm-sec-grp.id]

  tags = {
    Name = "SSH bastion"
  }

}