#!/bin/sh
GITHUB_TOKEN=$1
#
pr_number=$(jq --raw-output .pull_request.number "$GITHUB_EVENT_PATH")
echo "PR Number: $pr_number"
#
gif_url="Welcome to docker action"
#
echo $gif_url
#
response=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  -d "{\"body\": \"Thank you for your contribution! \n🎉($gif_url)\"}" \
  "https://api.github.com/repos/$GITHUB_REPOSITORY/issues/$pr_number/comments")
#
#
echo "Comment posted: $(echo "$response")"
