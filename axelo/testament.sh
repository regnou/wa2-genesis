#!/bin/sh

# @@@
# @@@ SECURITY
# @@@
# -
#  token GH (pour deploy)
# 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
# -
1//0hN_DcQPIpN3yCgYIARAAGBESNwF-L9IrjG8hC0syJuvtPmMqPXq-w6eAGAO1WfQyX3d93ghYtA1JphjSNESIVQdw19FduF9QUTw
# -

# @@@
# @@@ DEPENDENCIES
# @@@
# -
# brew install gh
# -
# curl -sL https://firebase.tools | upgrade=true bash
# npm install -g firebase-tools
# -

# @@@
# @@@ VAR
# @@@

# @@@
# @@@ TESTAMENT SCRIPT STARTS
# @@@
# $$$ 1- Creation de github
# https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/adding-locally-hosted-code-to-github
git init -b main
touch "README.md"
touch "testament.sh"
gh repo create
# organization-name/wa
git add . && git commit -m "testament"
git push --set-upstream origin main
git push
# gh repo rename genesis

# $$$ 2- Creation de firebase
firebase login:ci
firebase init
# wa-xxx
npm install firebase
# TODO - creer firestore en CLI

# $$$ 3- Creation de sveltekit
npm create svelte@latest header
cd header
npm install
npm run dev -- --open
