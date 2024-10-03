# Azure Shared Image Gallery
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-blue.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![OpenTofu Registry](https://img.shields.io/badge/opentofu-registry-yellow.svg)](https://search.opentofu.org/module/claranet/shared-image-gallery/azurerm/)

Azure module to deploy a [Azure Shared Image Gallery](https://docs.microsoft.com/en-us/azure/xxxxxxx).

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 7.x.x       | 1.3.x             | >= 3.0          |
| >= 6.x.x       | 1.x               | >= 3.0          |
| >= 5.x.x       | 0.15.x            | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   | >= 2.0          |
| >= 3.x.x       | 0.12.x            | >= 2.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Contributing

If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

More details are available in the [CONTRIBUTING.md](./CONTRIBUTING.md#pull-request-process) file.

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "x.x.x"

  location    = module.azure_region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}

module "run" {
  source  = "claranet/run/azurerm"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name
}

module "shared_image_gallery" {
  source  = "claranet/shared-image-gallery/azurerm"
  version = "x.x.x"

  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name

  client_name = var.client_name
  environment = var.environment
  stack       = var.stack

  shared_images_definitions = [
    {
      name = "Debian11"
      identifier = {
        offer     = "Debian"
        publisher = "Claranet"
        sku       = "11"
      }
      os_type     = "Linux"
      description = "Claranet's Debian 11 custom image."
    },
    {
      name = "Debian12"
      identifier = {
        offer     = "Debian"
        publisher = "Claranet"
        sku       = "12"
      }
      os_type     = "Linux"
      description = "Claranet's Debian 12 custom image."
    },

  ]
  extra_tags = {
    foo = "bar"
  }
}
```

## Providers

| Name | Version |
|------|---------|
| azurecaf | ~> 1.2, >= 1.2.22 |
| azurerm | ~> 3.74 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_shared_image.shared_image](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/shared_image) | resource |
| [azurerm_shared_image_gallery.shared_image_gallery](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/shared_image_gallery) | resource |
| [azurecaf_name.shared_image_gallery](https://registry.terraform.io/providers/claranet/azurecaf/latest/docs/data-sources/name) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_name | Client name/account used in naming. | `string` | n/a | yes |
| community\_gallery | Configure the Shared Image Gallery as a Community Gallery. | <pre>object({<br/>    eula            = string<br/>    prefix          = string<br/>    publisher_email = string<br/>    publisher_uri   = string<br/>  })</pre> | `null` | no |
| custom\_name | Custom Azure Shared Image Gallery, generated if not set | `string` | `""` | no |
| default\_tags\_enabled | Option to enable or disable default tags. | `bool` | `true` | no |
| environment | Project environment. | `string` | n/a | yes |
| extra\_tags | Additional tags to add on resources. | `map(string)` | `{}` | no |
| location | Azure region to use. | `string` | n/a | yes |
| location\_short | Short string for Azure location. | `string` | n/a | yes |
| name\_prefix | Optional prefix for the generated name | `string` | `""` | no |
| name\_suffix | Optional suffix for the generated name | `string` | `""` | no |
| resource\_group\_name | Name of the resource group. | `string` | n/a | yes |
| shared\_image\_gallery\_description | A description for this Shared Image Gallery. | `string` | `null` | no |
| shared\_images\_definitions | Create Shared Image Definition. | <pre>list(object({<br/>    name = string<br/>    identifier = object({<br/>      offer     = string<br/>      publisher = string<br/>      sku       = string<br/>    })<br/>    os_type                             = string<br/>    description                         = optional(string)<br/>    disk_types_not_allowed              = optional(list(string))<br/>    end_of_life_date                    = optional(string)<br/>    eula                                = optional(string)<br/>    specialized                         = optional(bool)<br/>    architecture                        = optional(string, "x64")<br/>    hyper_v_generation                  = optional(string, "V1")<br/>    max_recommended_vcpu_count          = optional(number)<br/>    min_recommended_vcpu_count          = optional(number)<br/>    max_recommended_memory_in_gb        = optional(number)<br/>    min_recommended_memory_in_gb        = optional(number)<br/>    privacy_statement_uri               = optional(string)<br/>    release_note_uri                    = optional(string)<br/>    trusted_launch_enabled              = optional(bool)<br/>    confidential_vm_supported           = optional(bool)<br/>    confidential_vm_enabled             = optional(bool)<br/>    accelerated_network_support_enabled = optional(bool)<br/>    tags                                = optional(map(string))<br/>  }))</pre> | `[]` | no |
| stack | Project stack name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | Azure Shared Image Gallery ID |
| name | Azure Shared Image Gallery name |
| shared\_image\_gallery | Azure Shared Image Gallery output object |
| shared\_images\_definitions | Azure Shared Images definitions |
<!-- END_TF_DOCS -->

## Related documentation

Microsoft Azure documentation: xxxx
