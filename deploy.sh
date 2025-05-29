#!/bin/bash

echo "🛠 Run Hugo for build"
docker compose -f /mnt/f/dev-docker/hugo-builder/docker-compose.yml run --rm hugo-builder --minify

echo "📤 Coping to static-server/public..."
rsync -av /mnt/f/dev-docker/hugo-builder/public/ /mnt/f/dev-docker/static-server/public/

echo "✅ Successfully"
