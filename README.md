# localstack-demo


### General

* Description: This is a proof of concept demo for `localstack`+`terraform`

### Pre-flight

1. Install docker and docker-compose
2. Install Terraform
3. Create `localstack` docker network: `docker network create localstack-network`
4. Run `localstack`: `docker-compose up -d`
5. Install `awslocal` wrapper for `awscli`: `pip3 install awscli-local`


### Usage

1. `cd` into the `terraform folder` and check out how the provider in `provider.tf` connects to `localstack`
2. Run `terraform init` then `terraform plan`
3. You should see multiple ec2 instances staged to be created
4. Run `terraform apply -auto-approve`
    - You will see that the "creation" process is way quicker which allows you to iterate on terraform faster
5. Run `terraform destroy` to remove the instances
6. `cd ..` to the root of the repo and then run `docker-compose down` to remove the `localstack` container


### Lessons Learned

* It doesn't handle data source lookups very well:

```
Error: Your query returned no results. Please change your search criteria and try again.

  on ec2.tf line 1, in data "aws_ami" "ubuntu":
   1: data "aws_ami" "ubuntu" {
```

* You have to pay for a `localstack pro` license to be able to create RDS instances:

```
Error: Error creating DB Instance: :
        status code: 400, request id:

  on rds.tf line 1, in resource "aws_db_instance" "test":
   1: resource "aws_db_instance" "test" {
```
* You gotta remember to update the `docker-compose.yml` file to expose the mocked AWS services
* You can use `localstack` for local lambda development, but AWS has recently allowed container development, which might be easier to set up and maintain.



### Resources

* [A guide to localstack (part 1) - How to mock Amazon web services in local](https://baptiste.bouchereau.pro/tutorial/mock-aws-services-with-localstack/)
* [localstack github repo](https://github.com/localstack/localstack)
* [localstack website](https://localstack.cloud/)
