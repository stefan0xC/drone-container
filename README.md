Setup Drone CI for Gitea in a podman container
==============================================

What is needed?
---------------

* A podman host
* Client ID and Client secret from a Gitea OmniAuth Application
* A shared secret between drone host and runner
* A domain for Let's Encrypt (not sure)

Usage
-----

1. Collect the needed informations
2. `cp .env.sample .env` and edit `.env` filling out the missing details. See Drone CI docs for details.
3. Run `./run-drone.sh` to create the drone server.
4. Run `./create-runner.sh` to create a drone runner on the server or alternatively on your system. (You may need to adapt the file paths.)

