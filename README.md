[![CI](https://github.com/bihealth/panelapp-pydantic/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/bihealth/panelapp-pydantic/actions/workflows/main.yml)
[![codecov](https://codecov.io/gh/bihealth/panelapp-pydantic/branch/main/graph/badge.svg?token=059T45KAQM)](https://codecov.io/gh/bihealth/panelapp-pydantic)
[![Documentation Status](https://readthedocs.org/projects/panelapp-pydantic/badge/?version=latest)](https://panelapp-pydantic.readthedocs.io/en/latest/?badge=latest)
[![Bioconda](https://img.shields.io/conda/dn/bioconda/panelapp-pydantic.svg?label=Bioconda)](https://bioconda.github.io/recipes/panelapp-pydantic/README.html)
[![Pypi](https://img.shields.io/pypi/pyversions/panelapp-pydantic.svg)](https://pypi.org/project/panelapp-pydantic)

# PanelApp Pydantic

Pydantic models for PanelApp data.

## Terraform Project Management

```
$ cd utils/terraform
$ terraform init
$ terraform import github_repository.panelapp-pydantic panelapp-pydantic
$ terraform validate
$ terraform fmt
$ terraform plan
$ terraform apply
```
