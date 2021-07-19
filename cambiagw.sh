#!/bin/bash
ip route replace default via $1
route -n
