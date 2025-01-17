
##############################################################
# Mongodb Instance
##############################################################
variable "engine_version" {
  description = "The version number of the database. Valid value: 3.2, 3.4, 4.0. "
  type        = string
  default     = "4.0"
}

variable "db_instance_storage" {
  description = "The storage space of the instance. Valid values: 10 to 3000. Unit: GB. You can only specify this value in 10 GB increments. "
  type        = number
  default     = 10
}

variable "db_instance_class" {
  description = "The specification of the instance. For more information about the value, see https://www.alibabacloud.com/help/doc-detail/57141.htm"
  type        = string
  default     = "dds.mongo.mid"
}

variable "storage_engine" {
  description = "The MongoDB storage engine, WiredTiger or RocksDB. Default value: WiredTiger. "
  type        = string
  default     = "WiredTiger"
}


variable "name" {
  description = " The name of DB instance. It a string of 2 to 256 characters"
  type        = string
  default     = "testname"
}

variable "instance_charge_type" {
  description = "The billing method of the instance. Valid values are Prepaid, PostPaid, Default to PostPaid"
  type        = string
  default     = "PostPaid"
}

variable "period" {
  description = "The duration that you will buy DB instance (in month). It is valid when instance_charge_type is PrePaid. Valid values: [1~9], 12, 24, 36. Default to 1"
  default     = 1
}

variable "zone_id" {
  description = "The ID of the zone. You can refer to https://www.alibabacloud.com/help/doc-detail/61933.htm. "
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The virtual switch ID to launch DB instances in one VPC. "
  type        = string
  default     = ""
}

variable "security_ip_list" {
  description = " List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). "
  type        = list(string)
  default     = []
}

variable "account_password" {
  description = "Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines"
  type        = string
  default     = "test123456_"
}

variable "replication_factor" {
  description = "The number of nodes in the replica set instance. Valid values: 3, 5, 7. Default value: 3. "
  type        = number
  default     = 3
}

variable "backup_period" {
  description = "MongoDB Instance backup period. It is required when backup_time was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. "
  type        = list(string)
  default     = ["Monday"]
}

variable "backup_time" {
  description = "MongoDB instance backup time. It is required when backup_period was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to a random time, like '23:00Z-24:00Z'. "
  type        = string
  default     = "01:00Z-02:00Z"
}

variable "tags" {
  description = "A mapping of tags to assign to the mongodb instance resource. "
  type        = map(string)
  default     = {}
}

variable "instance_id" {
  description = "`(Deprecated)` It has been deprecated from version 1.2.0 and use `existing_instance_id` instead. "
  type        = string
  default     = ""
}

variable "region" {
  description = "The specification of the monitoring region."
  type        = string
  default     = ""
}

variable "create_resources_size" {
  description = "The specification of the monitoring region."
  type        = string
  default     = "1"
}


