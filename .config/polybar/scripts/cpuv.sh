#!/bin/sh

sensors | grep "SVI2_Core" | tr -d '+' | awk '{print $2}'
