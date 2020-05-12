podman run \
	--volume=/root/drone/.env:/opt/drone \
	--volume=/srv/docker:/var/lib/docker \
	--env-file=/root/drone/.env \
	--publish=127.0.0.1:3000:3000 \
	--restart=always \
	--privileged=true \
	--detach=true \
	--name=docker \
	docker:dind

sleep 10

podman exec docker docker run \
	-v /var/run/docker.sock:/var/run/docker.sock \
	--env-file /opt/drone \
	-p 3000:3000 \
	--name runner \
	drone/drone-runner-docker:1
