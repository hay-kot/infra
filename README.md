# Welcome to Infra!
Welcome to my Repository for my infrastructure as code. This repository contains all the code infrastructure I use to maintain and deploy my home and clould systems. It's still a WIP.

See the `makefile` for command references

- [Welcome to Infra!](#welcome-to-infra)
  - [Ansible](#ansible)
    - [Conventions](#conventions)
  - [Scripts](#scripts)

## Ansible

### Conventions
- Roles starting with `_` are not meant to be used by hosts directly. They are "utility" roles that are used by other roles. `_docker_compose_generator` is a good example of this in use.
- Roles starting with `docker_` indicate a container stack deployment
- Roles starting with `common_` indicate a common deployment used for all hosts
- Variables for specific services are prefixed with the service name. eg. `adguard_portal_port: 37808`
- Templates used for specific hosts should have follow the `<name>.<host>.<extension>` naming convention. eg. `dynamic-config.linode.yaml`

## Scripts
Scripts directory contains helpful utilites for managing this repository and in general are not used on host systems. 

1. `git-init.sh` - Install ansible vault precomit hook to ensure the vault file is encrypted before committing.
2. yml_to_yaml.py - Converts a .yml file to a .yaml file