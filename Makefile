help:
	@echo "\nGOALS"
	@echo "    help   - print this help and exit"
	@echo "    index  - generate a new index.yaml file"
	@echo "    update - commit and push to GitHub"
	@echo "    all    - does and index and update\n"

all: index update
	
index:
	helm repo index --url=https://ksuderman.github.io/helm_charts/ .
	
update:
	git add index.yaml *.tgz
	git commit -m "Index update"
	git push origin master

