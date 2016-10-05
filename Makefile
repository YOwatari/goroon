run: deps
	go run main.go

deps: Gomfile.lock
	gom install

build: goroon

goroon: deps
	gom build

Gomfile:
	gom gen Gemfile

Gomfile.lock: Gomfile
	gom lock

.PHONEY: run deps build
