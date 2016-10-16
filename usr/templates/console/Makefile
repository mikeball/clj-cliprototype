# Common Tasks
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_path := $(dir $(mkfile_path))

TAG=permissions_projectx4


# build the container
docker-build:
	docker build --tag=$(TAG) dev/container
	notify-send "$(TAG) build complete"



# run the dev container
docker-run:
	mkdir -p ~/.m2
	docker run --rm  -v $(current_path):/work -v ~/.m2:/home/$(USER)/.m2  -p 9090:9090  -it $(TAG)

	# todo mount sshfs for jdk access

