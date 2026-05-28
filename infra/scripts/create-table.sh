#!/bin/bash

TABLE_NAME="tbl6012_gestao_veiculos-dev"
REGION="us-east-2"

echo "Creating table..."

aws dynamodb create-table \
  --table-name $TABLE_NAME \
  --attribute-definitions \
      AttributeName=PK,AttributeType=S \
      AttributeName=SK,AttributeType=S \
  --key-schema \
      AttributeName=PK,KeyType=HASH \
      AttributeName=SK,KeyType=RANGE \
  --billing-mode PAY_PER_REQUEST \
  --region $REGION

echo "Waiting ACTIVE..."

aws dynamodb wait table-exists \
  --table-name $TABLE_NAME \
  --region $REGION

echo "Created"