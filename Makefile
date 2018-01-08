build:
	mkdocs build
publish: build
	git subtree push --prefix=site origin site --squash 
	ssh dstefan@login.eng.ucsd.edu 'cd public_html/cse291-winter18/ && git fetch && git reset --hard origin/site'
remove:
	git push origin :site
