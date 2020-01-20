IMG := continuumio/anaconda3
TAG := latest
MOUNT_DIR := "/Users/taiki/mnt"
NAME := jupyterlab


docker-run-bash:
	docker run -it --init \
	--ipc host \
	--name ${NAME}
	--volume ${MOUNT_DIR}:"/app/mnt" \
	${IMG}:${TAG} /bin/bash


docker-run-jupyter:
	docker run --rm -it --init \
	--ipc host \
	--name ${NAME} \
	--publish 8000:8000 \
	--volume ${MOUNT_DIR}:"/app/mnt" \
	${IMG}:${TAG} \
	jupyter-lab --ip=0.0.0.0 --port 8000 --allow-root --no-browser