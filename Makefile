.PHONY: build run

build:
	zensical build --clean

run:
	zensical serve

git-init-remote:
	ssh hz "mkdir -p ~/repos/singularity"
	ssh hz "cd ~/repos/singularity && git init --bare"
	git remote add origin hz:repos/singularity

git-push:
	git push hz master
