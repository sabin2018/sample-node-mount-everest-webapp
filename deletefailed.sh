gh run list --limit 100 --status failure --json databaseId | \
jq -r '.[].databaseId' | \
xargs -I {} gh api -X DELETE "repos/$(gh repo view --json nameWithOwner -q .nameWithOwner)/actions/runs/{}"

