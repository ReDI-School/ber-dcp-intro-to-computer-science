server:
	hugo server -D

check:
	hugo check --verbose

build:
	hugo

update-submodules:
	git submodule update --init --recursive
