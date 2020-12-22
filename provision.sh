#!/usr/bin/env bash

curl -L -o opa https://openpolicyagent.org/downloads/latest/opa_linux_amd64
chmod +x opa
mv opa /usr/local/bin

# opa sign --claims-file claims.json --signing-alg HS256 --signing-key abc123 --bundle policy/
# opa build --bundle --signing-alg HS256 --claims-file claims.json --signing-key abc123 --verification-key abc123 policy/

# TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
# curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/
# http://169.254.169.254/latest/meta-data/iam/security-credentials/some-role

# docker run -p 8181:8181 -v $(pwd):/config  openpolicyagent/opa:latest run --server --log-level=debug --config-file=/config/config.yaml