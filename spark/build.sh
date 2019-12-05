#!/bin/bash -e

docker build -t pipelineai/spark-gpu:1.5.0 -f Dockerfile.gpu .
docker build -t pipelineai/spark-cpu:1.5.0 -f Dockerfile.cpu .

docker tag pipelineai/spark-gpu:1.5.0 pipelineai/spark-gpu:1.5.0
docker tag pipelineai/spark-cpu:1.5.0 pipelineai/spark-cpu:1.5.0

#docker tag 954636985443.dkr.ecr.us-west-2.amazonaws.com/pipelineai/train-gpu:1.5.0 gcr.io/flux-capacitor1/pipelineai/train-gpu:1.5.0
#docker tag 954636985443.dkr.ecr.us-west-2.amazonaws.com/pipelineai/train-cpu:1.5.0 gcr.io/flux-capacitor1/pipelineai/train-cpu:1.5.0

#docker tag 954636985443.dkr.ecr.us-west-2.amazonaws.com/pipelineai/train-gpu:1.5.0 pipelineai.azurecr.io/pipelineai/train-gpu:1.5.0
#docker tag 954636985443.dkr.ecr.us-west-2.amazonaws.com/pipelineai/train-cpu:1.5.0 pipelineai.azurecr.io/pipelineai/train-cpu:1.5.0

