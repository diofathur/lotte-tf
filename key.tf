resource "aws_key_pair" "pti-key" {
  key_name = "${local.name}-key"
  public_key = file("~/id_rsa.pub")
}

