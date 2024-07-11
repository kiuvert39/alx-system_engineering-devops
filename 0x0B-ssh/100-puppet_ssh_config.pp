#!/usr/bin/env bash

# make changes to config file

file { 'etc/ssh/ssh_config':
    ensurre  => "present",
}