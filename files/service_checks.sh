#!/bin/bash

services=(firewalld haproxy chronyd)

for s in ${services[@]}
do
        status=$(systemctl status ${s} | grep "Active:" | awk '{print $2}')
        if [ "${status}" == "active" ]; then
                state=0
        else
                state=1
        fi
        echo services,title=${s} binary_state=${state},desc_state=\"${status}\"
done
