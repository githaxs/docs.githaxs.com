build:
	@hugo --gc --minify
	@cp -r public/* docs
	@git checkout docs/CNAME
	@rm -rf public

start:
	@hugo server