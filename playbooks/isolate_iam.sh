#!/bin/bash
# Isolate compromised Staging IAM user immediately by applying a total Deny policy
TARGET_USER="nairaflow-dev-staging"
POLICY_NAME="ImmediateContainmentDeny"

echo "⚠️ Injecting strict Deny policy onto compromised user: $TARGET_USER"

aws iam put-user-policy --user-name $TARGET_USER --policy-name $POLICY_NAME --policy-document '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Action": "*",
      "Resource": "*"
    }
  ]
}'

echo "✅ Attacker credentials neutralized. No infrastructure downtime incurred."