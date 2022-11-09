#!/bin/sh


# -
# SECURITY
# -
-- token GH (pour deploy)
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


# -
# DEPENDENCIES
# -
# brew install gh

# -
# VAR
# -

# -
# TESTAMENT SCRIPT STARTS
# -
#@@@ 1 - Creation de github
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

#@@@ 2 - ?
