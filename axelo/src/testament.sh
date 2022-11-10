#!/bin/sh

cd '/Users/yo/0HOME/0WEBAGENCY/0GH/GENESIS/axelo'

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

# $$$ 2- Creation d un component sveltekit
cd '/Users/yo/0HOME/0WEBAGENCY/0GH/GENESIS/axelo/src/modules_js'
pnpm create svelte@latest c0
cd c0
pnpm i
pnpm run dev -- --open

# $$$ 3- Creation de firebase
cd '/Users/yo/0HOME/0WEBAGENCY/0GH/GENESIS/axelo'
firebase login:ci
firebase init
# wa-xxx
pnpm add firebase
# TODO - creer firestore en CLI

# $$$ - Creation de tailwind
# https://tailwindcss.com/docs/guides/sveltekit
# https://github.com/svelte-add/tailwindcss
npx svelte-add@latest tailwindcss
# pnpm add install -D tailwindcss postcss autoprefixer svelte-preprocess
# npx tailwindcss init tailwind.config.cjs -p

# $$$ - Creation d un package
# svelte-package
# npm publish --access public
# npm adduser
# regnou.a / ge72+

# $$$ launch demo local
# pnpm run dev -- --open
