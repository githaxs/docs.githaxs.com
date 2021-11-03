build:
	@hugo --gc --minify
	@mv public docs
	@git checkout docs/CNAME

start:
	@hugo server