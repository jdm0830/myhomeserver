#!/bin/bash
set -e

COMPOSE_FILE="/mnt/2hd/share/docker/docker-compose-udms.yml"

echo "📥 Pulling latest images..."
sudo docker compose -f $COMPOSE_FILE pull

echo "🔄 Recreating containers with updated images..."
sudo docker compose -f $COMPOSE_FILE up -d

echo "🧹 Cleaning up unused images..."
docker image prune -f

echo "✅ Update complete!"
