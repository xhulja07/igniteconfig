#!/bin/bash
kubectl cp $1:finalEntEmbed*.txt ~/ignite2/igniteconfig/finalEntEmbed*.txt
kubectl cp $1:finalRelEmbed*.txt ~/ignite2/igniteconfig/finalRelEmbed*.txt
cd ~/ignite2/igniteconfig
git add .
git commit -m "embeddings files"
git push
