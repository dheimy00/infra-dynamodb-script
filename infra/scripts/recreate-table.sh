#!/bin/bash

set -e

./scripts/destroy-table.sh
./scripts/create-table.sh
./scripts/seed.sh