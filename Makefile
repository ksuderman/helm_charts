
help:
	@echo "\GOALS
	@echo "    help   - print this help and exit"
	@echo "    index  - generate a new index.yaml file"
	@echo "    update - commit and push to GitHub"
	
index:
	helm repo index --url=https://ksuderman.github.io/helm_charts/ .
	
update:
	git add index.yaml *.tgz
	git commit -m "Index update"
	git push origin master

all: index update

