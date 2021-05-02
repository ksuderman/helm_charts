
help:
	@echo "GOALS: help, index, update"
	
index:
	helm repo index --url=https://ksuderman.github.io/helm_charts/ .
	
update:
	git add index.yaml *.tgz
	git commit -m "Index update"
	git push origin master
