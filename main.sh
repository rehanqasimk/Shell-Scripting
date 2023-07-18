#!/bin/zsh

# Array of commit hashes to cherry-pick
commits=(
  "abcdef1"
  "abcdef2"
  "abcdef3"
)

# Iterate over the commits and cherry-pick each one
for commit in "${commits[@]}"; do
  echo "Cherry-picking commit: $commit"
  git cherry-pick --allow-empty "$commit"

  # Check the exit status of the cherry-pick command
  if [[ $? -ne 0 ]]; then
    echo "Error: Cherry-pick failed for commit $commit"
    # You can choose to handle the error case here, such as exiting the script or taking other actions
    exit 1
  fi
done

echo "Cherry-picking complete!"
