#!/bin/bash

TABLE_NAME="tbl6012_gestao_veiculos-dev"
REGION="us-east-2"

echo "Deleting table..."

aws dynamodb delete-table \
  --table-name $TABLE_NAME \
  --region $REGION

echo "Waiting delete..."

aws dynamodb wait table-not-exists \
  --table-name $TABLE_NAME \
  --region $REGION

echo "Deleted"