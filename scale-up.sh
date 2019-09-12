#!/bin/bash
#
# Deploy or cleanup a quarkus install

echo "Scaling big fat java to 100 pod(s)"
echo "oc scale --replicas=100 deployment.apps big-fat-java -n supersonic-subatomic-java"
oc scale --replicas=100 deployment.apps big-fat-java -n supersonic-subatomic-java

echo "Scaling quarkus to 100 pod(s)"
echo "oc scale --replicas=100 deployment.apps supersonic-subatomic-java -n supersonic-subatomic-java"
oc scale --replicas=100 deployment.apps supersonic-subatomic-java -n supersonic-subatomic-java

watch oc get replicaset -n supersonic-subatomic-java
