build:
	@hugo --gc --minify
	@mv public docs

start:
	@hugo server