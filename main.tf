resource "aws_instance" "server" {
    count= 2
    ami = "${var.ami_id}"
    availability_zone = "us-east-1d"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    vpc_security_group_ids = ["${var.mysecgroup_id}"]
    subnet_id = "${var.mysubnet_id}"
    source_dest_check = false
    tags = {

        Name = "${var.server_name}"
}

    tags_all = {
         Name = "${var.server_name1}"
        }

}

