#!/bin/bash

top -bn 1 | grep "^ " | awk '{ printf("%-8s  %-8s %-8s  %-8s  %-8s\n",$1, $2, $12, $10, $9); }' | head -n 10

