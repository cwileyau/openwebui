#!/bin/bash
docker run --rm -v /home/craig/openwebui/volume:/data -v $(pwd):/backup   alpine tar czf /backup/openwebui-$(date +%Y%m%d).tar.gz /data
docker compose pull
docker compose up -d --remove-orphans
docker image prune -a -f
