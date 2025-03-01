#!/usr/bin/env bash

process=$1

if [[ "${process}" == "clean" ]]; then
  echo "cleaning crd schemas dir"
  rm -r ~/.crd-schemas/*

else 
  echo "ensuring crd schemas dir is present"
  mkdir ~/.crd-schemas

  echo "pulling crd-schemas"
  kubectl get crds -o json | jq -c '.items[] | {name: .metadata.name, schema: .spec.versions[0].schema.openAPIV3Schema}' | while read -r crd; do
    name=$(echo "$crd" | jq -r '.name')
    echo "$crd" | jq '.schema' > ~/.crd-schemas/"$name".json
  done
fi
