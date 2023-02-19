resource "aws_instance" "web-server-instance-1-Gnossis" {
  ami               = "ami-0dfcb1ef8550277af"
  instance_type     = "m5.large"
  availability_zone = "us-east-1a"
  key_name          = "ut-dhyanesh"
  ebs_optimized = true
  root_block_device {
    
    volume_size = 50
    volume_type = "gp3"
  
  }



  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.nic-Gnossis.id
  }
    user_data = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo mkdir /database
                sudo yum install httpd httpd-tools mod_ssl -y
                sudo systemctl start httpd
                yum install git -y
                sudo yum install amazon-linux-extras -y
                sudo amazon-linux-extras enable php7.4
                sudo yum clean metadata
                sudo yum install php php-common php-pear -y
                sudo yum install php-{cgi,curl,mbstring,gd,mysqlnd,gettext,json,xml,fpm,intl,zip} -y
                sudo rpm -Uvh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
                rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
                sudo yum install mysql-community-server -y
                sudo systemctl enable mysqld 
                sudo systemctl start mysqld 
             
                EOF

  tags = {
    Name = "web-server-1-Gnossis"
  }
}
resource "aws_instance" "web-server-instance-2-Gnossis" {
  ami               = "ami-0dfcb1ef8550277af"
  instance_type     = "m5.xlarge"
  availability_zone = "us-east-1a"
  key_name          = "ut-dhyanesh"
  ebs_optimized = true
  root_block_device {
    
    volume_size = 50
    volume_type = "gp3"
  
  }

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.nic-Gnossis-1.id
  }
  tags = {
    Name = "web-server-2-Gnossis"
  }
}