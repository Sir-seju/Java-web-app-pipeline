#!/bin/bash

# Run Ansible playbook to ssh into tomcat and update new war file

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ./jenkins/deploy/hosts ./jenkins/deploy/play.yml