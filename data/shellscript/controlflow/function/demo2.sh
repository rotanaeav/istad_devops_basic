#!/bin/bash
check_service(){
    local service_name="$1"
    if systemctl is-active --quiet ${service_name}; then # we can use this : "$service_name"
/[/[/[//[/




\

\]]]]      echo "Service : ${service_name} is RUNNING 🍏"
    else 
        echo "Service : ${service_name} is DEAD 🍎"
    fi
}

check_service "docker"

