# Terraform-module-for-private-dns-zone
Using this techhub template we can create private dns zone on azure subscription using terraform module

## Prerequisites

Before you can use this Terraform module, you will need to have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) - v1.0.5 or later
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) - v2.26.0 or later

You will also need to have an Azure azurerm_billing_enrollment_account_scope. 

## Usage

To use this Terraform module, follow these steps:

From your local, generate and Set up SSH key pair for Github.

Clone this Git repo to your local machine.
Replace the subscription id variable with your account subscription  id where you want to create your dns zone

```bash
git@github.com:NashTech-Labs/Terraform-module-for-private-dns-zone.git
```

Change into the directory containing the module.

```bash
cd module
```

Initialize Terraform in the directory.

```bash
terraform init
```
```bash
terraform plan
```
```bash
terraform apply
```
