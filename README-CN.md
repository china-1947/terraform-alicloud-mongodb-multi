Terraform module which creates many MongoDB instance on Alibaba Cloud
terraform-alicloud-mongodb-multi
=====================================================================


本 Module 用于在阿里云的 VPC 下创建一个[MongoDB云数据库](https://help.aliyun.com/document_detail/26558.html). 

本 Module 支持创建以下资源:

* [MongoDB 数据库实例 (mongodb instance)](https://www.terraform.io/docs/providers/alicloud/r/mongodb_instance.html)


## 用法

#### 创建新的Mongodb实例

```hcl
module "mongodb" {
  source               = "terraform-alicloud-modules/mongodb-multi/alicloud"
  region               = "cn-shanghai"
  count = 2
  ###################
  # MongoDB Instance
  ###################
  engine_version       = "3.4"
  storage_engine       = "RocksDB"
  replication_factor   = 3
  name                 = "my-mongo"
  instance_charge_type = "PostPaid"
  db_instance_class    = "dds.mongo.mid"
  db_instance_storage  = 10
  period               = 1
  security_ip_list     = ["1.1.1.1", "2.2.2.2", "3.3.3.3"]
  vswitch_id           = "vsw-uf6ocf31lyoqvw2jmmr9f"
  zone_id              = "cn-shanghai-b"
  account_password     = "mongo123"
  backup_period        = ["Monday", "Wednesday", "Friday"]
  backup_time          = "02:00Z-03:00Z"
  tags = {
    Env      = "Private"
    Location = "Secret"
  }
}
```

## 示例

* [创建 Mongodb 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-mongodb-multi/tree/master/example)



## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file` 中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.56.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.


作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)
许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)

