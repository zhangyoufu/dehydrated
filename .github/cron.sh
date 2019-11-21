#!/bin/bash
set -ex

# fetch upstream
git remote add upstream https://github.com/lukas2511/dehydrated.git
git fetch --depth=1 upstream master

# check against book-keeping branch
LATEST_COMMIT=$(git log -1 --format=format:%H FETCH_HEAD)
LOCAL_COMMIT=$(git log -1 --format=format:%H origin/upstream)
if [ "${LOCAL_COMMIT}" = "${LATEST_COMMIT}" ]; then
    exit 0
fi

# build Docker image
git cat-file blob FETCH_HEAD:dehydrated >.github/docker/dehydrated
chmod +x .github/docker/dehydrated
docker build --squash --tag "${IMAGE_PATH}" .github/docker/

# push Docker image
docker login --username "${REGISTRY_USERNAME}" --password "${REGISTRY_PASSWORD}" "${IMAGE_PATH%%/*}"
docker push "${IMAGE_PATH}"

# update book-keeping branch
git push --force origin FETCH_HEAD:refs/heads/upstream
