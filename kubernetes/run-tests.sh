#!/bin/bash

export cluster_ip=$(kubectl get service opa-demo -o=jsonpath={.spec.clusterIP})

echo -e "\n Triggering Endpoint: /hello as John123 and expecting 'Hello World' \n"

curl --location --request GET http://$cluster_ip:8080/hello --header "Authorization: Basic am9objEyMzpwYXNzd29yZA=="

echo -e "\n\n Triggering Endpoint: /bye as John123 and expecting '403 Forbidden' \n"

curl --location --request GET http://$cluster_ip:8080/bye --header "Authorization: Basic am9objEyMzpwYXNzd29yZA=="

echo -e "\n\n Triggering Endpoint: /hello as admin123 and expecting '403 Forbidden' \n"

curl --location --request GET http://$cluster_ip:8080/hello --header "Authorization: Basic YWRtaW4xMjM6YWRtaW4="

echo -e "\n\n Triggering Endpoint: /bye as admin123 and expecting 'Bye' \n"

curl --location --request GET http://$cluster_ip:8080/bye --header "Authorization: Basic YWRtaW4xMjM6YWRtaW4="

echo -e "\n\n"