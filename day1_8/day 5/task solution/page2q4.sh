#!/bin/bash

cat /etc/passwd | grep -i "systemd" | wc -w
