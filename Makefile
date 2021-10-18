.PHONY: install
install: pull /usr/local/bin/binwalk

.PHONY: pull
pull:
	docker pull dsirov/binwalk-cpurec:latest

/usr/local/bin/binwalk: binwalk.sh
	sudo install -m 755 $< $@

.PHONY: build
build:
	docker build . --tag dsirov/binwalk-cpurec:latest

.PHONY: push
push:
	docker push dsirov/binwalk-cpurec:latest

