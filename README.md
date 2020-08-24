Packer build action

This action runs packer build on top of kvm hypervisor

## Inputs

### `templateFile`

**Optional** Packer template file to use for packer build. Default `"packer.json"`.

### `workingDir`

**Optional** Directory where the packer template is located. Default `"."`.

## Outputs

## Example usage

To configure the action simply add the following lines to your .github/workflows/packer-build.yml workflow file:

```
name: Run packer build on a template file

on:
  push:
    branches:
        - 'master'
jobs:
  packer_build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: Packer build
        uses: enr0s/packer-qemu-action@v1.0
        with:
          templateFile: 'packer.json'
          workingDir: '.'
```
