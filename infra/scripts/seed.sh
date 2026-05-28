#!/bin/bash

TABLE_NAME="tbl6012_gestao_veiculos-dev"
REGION="us-east-2"

echo "Seeding..."

aws dynamodb batch-write-item \
  --region $REGION \
  --request-items '{
    "'"$TABLE_NAME"'": [

      {
        "PutRequest": {
          "Item": {
            "PK": { "S": "USER#1" },
            "SK": { "S": "PROFILE" },
            "name": { "S": "John Doe" },
            "email": { "S": "john@email.com" }
          }
        }
      },

      {
        "PutRequest": {
          "Item": {
            "PK": { "S": "USER#2" },
            "SK": { "S": "PROFILE" },
            "name": { "S": "Mary Jane" },
            "email": { "S": "mary@email.com" }
          }
        }
      }

    ]
  }'

echo "Seed completed"