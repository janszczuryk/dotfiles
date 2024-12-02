COMMITS_PATH=/tmp/commits.txt

function last_commits
{
    COMMITS=$1

    if [ -z "$COMMITS" ]; then
        echo "Need commits count!"
        exit 1
    fi

    git show HEAD~$COMMITS..HEAD --pretty=format:"%h" --no-patch | tee "$COMMITS_PATH"

    echo >> "$COMMITS_PATH"
}

function apply_commits
{
    for COMMIT in $(tac "$COMMITS_PATH"); do
        git cherry-pick "$COMMIT" && echo "[OK] $COMMIT" || echo "[Fail] $COMMIT"
    done
}

