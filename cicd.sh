#!/bin/bash

echo "TFSec Scan ..."
tfsec . >/dev/null 2>&1
if [ $? -eq 0 ]; then
  echo success
else
  echo failed
fi

trivy image --exit-code 1 --severity CRITICAL bitnami/nginx >/dev/null 2>&1
echo "Trivy Scan ..."
if [ $? -eq 0 ]; then
  echo success
else
  echo failed
fi
