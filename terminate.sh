#!/bin/bash
cd /var/lib/jenkins/workspace/Shri/
ls

ssh -i /var/lib/jenkins/workspace/Shri/id_ed25519 root@10.10.175.146 \
  "pid=\$(ps aux | grep cron | grep -v grep | awk '{print \$2}'); echo \$pid; kill -6 \$pid"
