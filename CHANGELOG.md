## 8.1.1 (2025-10-01)

### Code Refactoring

* **deps:** 🔗 update claranet/azurecaf to ~> 1.3.0 🔧 204224e

### Miscellaneous Chores

* **deps:** 🔗 bump AzureRM provider version to v4.31+ 447a6c0
* **deps:** update dependency opentofu to v1.10.6 f16f2f6
* **deps:** update dependency tflint to v0.59.1 a1ed2bb
* **deps:** update dependency trivy to v0.66.0 7576607
* **deps:** update dependency trivy to v0.67.0 25a7959
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v6 a569e84
* **deps:** update tools 5764470

## 8.1.0 (2025-08-01)

### Features

* add disk_controller_type_nvme_enabled parameter for shared images e88da5f

### Miscellaneous Chores

* **⚙️:** ✏️ update template identifier for MR review 9480a8c
* 🗑️ remove old commitlint configuration files f5e3065
* **deps:** update dependency opentofu to v1.10.0 14ccb68
* **deps:** update dependency opentofu to v1.10.1 8dadd40
* **deps:** update dependency opentofu to v1.10.3 e0b6f19
* **deps:** update dependency opentofu to v1.9.1 f9eadb2
* **deps:** update dependency pre-commit to v4.2.0 7cb3045
* **deps:** update dependency terraform-docs to v0.20.0 95c2b3e
* **deps:** update dependency tflint to v0.55.1 8c31fa8
* **deps:** update dependency tflint to v0.57.0 c37f0d1
* **deps:** update dependency tflint to v0.58.0 8e43b4b
* **deps:** update dependency tflint to v0.58.1 4ff1c2b
* **deps:** update dependency trivy to v0.59.0 64c8d6c
* **deps:** update dependency trivy to v0.59.1 4495887
* **deps:** update dependency trivy to v0.60.0 18890fe
* **deps:** update dependency trivy to v0.61.1 62135fd
* **deps:** update dependency trivy to v0.62.0 c754e6f
* **deps:** update dependency trivy to v0.62.1 bcc4d21
* **deps:** update dependency trivy to v0.63.0 52783a4
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.21.0 1b8531c
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.22.0 cab2619
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.0 2ac8308
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.1 a7a2b14
* **deps:** update tools 34e62fc
* **deps:** update tools 6947193
* **deps:** update tools 8326015
* update Github templates d886406

## 8.0.0 (2025-01-24)

### ⚠ BREAKING CHANGES

* **AZ-1088:** AzureRM Provider v4+ and OpenTofu 1.8+

### Features

* **AZ-1088:** module v8 structure and updates 834f026

### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.8.3 89845c4
* **deps:** update dependency opentofu to v1.8.4 446d749
* **deps:** update dependency opentofu to v1.8.6 d985dae
* **deps:** update dependency opentofu to v1.8.8 9912fc5
* **deps:** update dependency opentofu to v1.9.0 4a8c9ad
* **deps:** update dependency pre-commit to v4 c5f48d8
* **deps:** update dependency pre-commit to v4.0.1 5fa4426
* **deps:** update dependency pre-commit to v4.1.0 d41c873
* **deps:** update dependency tflint to v0.54.0 ec57642
* **deps:** update dependency tflint to v0.55.0 6b3e166
* **deps:** update dependency trivy to v0.56.1 1ea43cd
* **deps:** update dependency trivy to v0.56.2 68d5144
* **deps:** update dependency trivy to v0.57.1 a437d86
* **deps:** update dependency trivy to v0.58.1 2d66494
* **deps:** update dependency trivy to v0.58.2 d2e1362
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.19.0 0995e88
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.20.0 f9389f9
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v5 ccd4ebb
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.1.0 6377ad1
* **deps:** update tools 692b2c6
* **deps:** update tools 6dd0692
* prepare for new examples structure c10c4ee
* update examples structure e494cde
* update tflint config for v0.55.0 6180b06

## 7.1.0 (2024-10-03)

### Features

* use Claranet "azurecaf" provider 1a63e17

### Documentation

* update README badge to use OpenTofu registry 710e9ef
* update README with `terraform-docs` v0.19.0 a87b3e1

### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] 39a854b
* **AZ-1391:** update semantic-release config [skip ci] ea9485e

### Miscellaneous Chores

* **deps:** add renovate.json ff2f6f8
* **deps:** enable automerge on renovate 153c160
* **deps:** update dependency opentofu to v1.7.0 4016f32
* **deps:** update dependency opentofu to v1.7.1 6829b80
* **deps:** update dependency opentofu to v1.7.2 d180e41
* **deps:** update dependency opentofu to v1.7.3 de18fdc
* **deps:** update dependency opentofu to v1.8.1 8b05fdd
* **deps:** update dependency opentofu to v1.8.2 06ed98d
* **deps:** update dependency pre-commit to v3.7.1 6665e26
* **deps:** update dependency pre-commit to v3.8.0 0f096e5
* **deps:** update dependency terraform-docs to v0.18.0 3549a94
* **deps:** update dependency terraform-docs to v0.19.0 64583ff
* **deps:** update dependency tflint to v0.51.0 f37b2ad
* **deps:** update dependency tflint to v0.51.1 67252e1
* **deps:** update dependency tflint to v0.51.2 d754986
* **deps:** update dependency tflint to v0.52.0 4b4d638
* **deps:** update dependency tflint to v0.53.0 d0b587a
* **deps:** update dependency trivy to v0.50.2 d298757
* **deps:** update dependency trivy to v0.50.4 9478ff3
* **deps:** update dependency trivy to v0.51.0 93c1286
* **deps:** update dependency trivy to v0.51.1 2d2c042
* **deps:** update dependency trivy to v0.51.2 eeb44be
* **deps:** update dependency trivy to v0.51.4 d8b5d86
* **deps:** update dependency trivy to v0.52.0 a539675
* **deps:** update dependency trivy to v0.52.1 c903573
* **deps:** update dependency trivy to v0.52.2 46fe75e
* **deps:** update dependency trivy to v0.53.0 d213b07
* **deps:** update dependency trivy to v0.55.0 b584a7b
* **deps:** update dependency trivy to v0.55.1 0282b93
* **deps:** update dependency trivy to v0.55.2 97b3ec2
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.17.0 978d75e
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.18.0 d16f33f
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 73193d2
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.1 0c03b6d
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.2 81996fb
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.3 65487e9
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.93.0 79faaf4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.0 05ffa7d
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.1 7fcefe2
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.2 c1bfab8
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.3 173f663
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.95.0 f6eeed4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.0 f7631a4
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.1 f4d9ae7
* **deps:** update renovate.json 1a8e925
* **deps:** update tools 812f0ee
* **pre-commit:** update commitlint hook a6f7095
* **release:** remove legacy `VERSION` file 805e3fd

# v7.0.0 - 2023-10-06

Added
  * AZ-89: Azure Shared Image Gallery module first release
