WINTERSMITH = ./node_modules/.bin/wintersmith

b: 
	@$(WINTERSMITH) build
	@cp .travis.yml build
p:
	@$(WINTERSMITH) preview --port 8000
