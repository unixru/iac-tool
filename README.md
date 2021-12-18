# iac-tool

Docker image of tools for Infrastructure as Code:

The versions of these applications are defined in the requirements.in file
(only one version of each application can be installed):

- ansible
- ansible-lint
- yamllint
- molecule
- testinfra

For these applications several versions can be installed at the same time
(see config.yaml):

- terraform
- terragrunt
- kubectl
- istioctl
- helm
