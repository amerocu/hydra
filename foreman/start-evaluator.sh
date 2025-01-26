#!/bin/sh

# wait for hydra-server to listen
while ! nc -z localhost 63333; do sleep 1; done

# add build folder
PATH="$(pwd)/build/src/hydra-evaluator:$PATH"

HYDRA_CONFIG=$(pwd)/.hydra-data/hydra.conf exec hydra-evaluator
