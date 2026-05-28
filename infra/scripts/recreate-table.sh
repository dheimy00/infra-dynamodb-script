#!/bin/bash

set -e

./infra/scripts/destroy-table.sh

./infra/scripts/create-table.sh

./infra/scripts/seed.sh