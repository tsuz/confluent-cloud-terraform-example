# Confluent Cloud Terraform Hello World Example

The goal of this sample is to 

1. Create an Environment in Confluent Cloud.
1. In the Environment, create a basic Kafka cluster in AWS region.

## Setup

1. Install Terraform
1. Either update variable.tf or add them to command line.

## Run

```
terraform apply -var "env_id=env-ab1234" -var "cluster_name=taku-test"
```

## Environmental varialbes

| var | default | description |
|--|--|--|
| env_id | null | If an environment exists, this can be found in the Confluent Cloud's consol. Click an Environment and look for `env-*` value in the URL. |
| env_name | "" | if `env_id` is not set, it will be created with this name.
| cluster_region | "ap-northeast-1" | AWS region in which the cluster will be created.
| cluster_name | "my-cluster" | Kafka cluster name.
