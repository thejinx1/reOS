.PHONY: prepare build clean purge check

prepare:
	sudo sh ./scripts/prepare-host.sh

build:
	sudo sh ./scripts/build-iso.sh

clean:
	sudo sh ./scripts/clean.sh

purge:
	sudo sh ./scripts/clean.sh --purge

check:
	sh ./scripts/check-project.sh
