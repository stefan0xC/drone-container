podman run \
	--volume=/srv/drone:/data \
	--env-file=/root/drone/.env \
	--publish=80:80 \
	--publish=443:443 \
	--restart=always \
	--detach=true \
	--name=drone \
	drone/drone:1
