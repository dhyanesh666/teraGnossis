resource "aws_ebs_volume" "vol1" {
  availability_zone = "us-east-1a"
  size              = 50
  type              = "gp3"
  
}

resource "aws_volume_attachment" "ebs_att1" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.vol1.id
  instance_id = aws_instance.web-server-instance-1-Gnossis.id
}
resource "aws_ebs_volume" "vol2" {
  availability_zone = "us-east-1a"
  size              = 50
  type              = "gp3"
}

resource "aws_volume_attachment" "ebs_att2" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.vol2.id
  instance_id = aws_instance.web-server-instance-1-Gnossis.id
}
resource "aws_ebs_volume" "vol3" {
  availability_zone = "us-east-1a"
  size              = 50
  type              = "gp3"
}

resource "aws_volume_attachment" "ebs_att3" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.vol3.id
  instance_id = aws_instance.web-server-instance-2-Gnossis.id
}
resource "aws_ebs_volume" "vol4" {
  availability_zone = "us-east-1a"
  size              = 50
  type              = "gp3"
}

resource "aws_volume_attachment" "ebs_att4" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.vol4.id
  instance_id = aws_instance.web-server-instance-2-Gnossis.id
}