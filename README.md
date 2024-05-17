<!-- BEGIN_TF_DOCS -->
# Mozilla Sops Vault Secret Engine Module

# ⚠️ THIS IS A DUMP OF A OLD MODULE THAT I BUILD AND IT IS NOT BEING MAINTAINED, IF YOU FOUND THIS USE AT YOUR OWN RISK ⚠️

This module aims to import folder with Sops encrypted files into Vault Key Vaulue Secret Engine
## Assumptions
- You have a [Vault](https://www.vaultproject.io/).
- You have [Mozilla Sops](https://github.com/mozilla/sops) encrypted files.
## Generating documentations
- Install terraform-docs
- terraform-docs markdown --hide modules --output-file README.md .

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_sops"></a> [sops](#requirement\_sops) | ~> 0.6.2 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 2.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | ~> 0.6.2 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | ~> 2.20.0 |

## Resources

| Name | Type |
|------|------|
| [vault_generic_secret.secret](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) | resource |
| [vault_mount.kv-secret-engine](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [sops_file.file](https://registry.terraform.io/providers/carlpett/sops/latest/docs/data-sources/file) | data source |
| [vault_generic_secret.kv-secret-engine](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_secret_engine"></a> [create\_secret\_engine](#input\_create\_secret\_engine) | Enable key-value secret engine creation. | `bool` | `false` | no |
| <a name="input_folder_path"></a> [folder\_path](#input\_folder\_path) | Folder path where sops encrypted files reside. | `string` | n/a | yes |
| <a name="input_secret_engine"></a> [secret\_engine](#input\_secret\_engine) | Vault Secret Engine where the secrets will be stored. | `string` | `"secret"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_engine"></a> [secret\_engine](#output\_secret\_engine) | Secret Engine |
| <a name="output_secrets_list"></a> [secrets\_list](#output\_secrets\_list) | List of secrets |
<!-- END_TF_DOCS -->
