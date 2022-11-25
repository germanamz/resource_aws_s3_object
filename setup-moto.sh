#!/usr/bin/env sh

export AWS_ACCESS_KEY_ID=test_AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=test_AWS_SECRET_ACCESS_KEY

aws s3api create-bucket --bucket the-bucket --endpoint-url "http://localhost:5000"

aws s3 cp ./test.json s3://the-bucket --endpoint-url "http://localhost:5000"
