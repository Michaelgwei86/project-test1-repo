
variable "prod_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Production instance"
}

variable "dev_instance_type" {
  type        = string
  default     = "t2.small"
  description = "Dev instance"
}

variable "ami_id" {
  type        = string
  default     = "ami-0d442a425e2e0a743"  //this AMI must be that in the region of your Provider
  description = "Instance AMI used" 
}

variable "key_pair" {
  type        = string
  default     = "wawa-keypair"
  description = "Key pair used"
}

variable "subnet_id" {
  type        = string
  default     = "subnet-0defe0e3bf26732a8"
  description = "Subnet used"
}

variable "security_group_ids" {
  type        = list (string)
  default     = ["sg-0c6ae4fc46f122f16"]
  description = "Subnet used"
}