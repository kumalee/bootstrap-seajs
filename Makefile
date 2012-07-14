FILE_LIST := $(wildcard *.js)
all:
	@echo "make single --make the bootstrap's js files modular"
	@echo 'make combine --combine bootstrap.js and make it modular'
single:
	@echo "start to make the bootstrap's js file modular..."	
	@mkdir -p bootstrap.sea
	@for X in $(FILE_LIST); \
	do echo 'define(function(){return function($$){' > temp.txt; \
	cat $$X >> temp.txt; \
	echo '}});' >> temp.txt; \
	sed 's/window.jQuery/$$/g' temp.txt > bootstrap.sea/$$X; \
	done
	@rm temp.txt
	@echo 'Complete!'
combine:
	@echo 'start to combine bootstrap.js and make it modular...'
	@mkdir -p bootstrap.sea
	@echo 'define(function(){return function($$){' > temp.txt;
	@for X in $(FILE_LIST); \
	do cat $$X >> temp.txt; \
	done
	@echo '}});' >> temp.txt;
	@sed 's/window.jQuery/$$/g' temp.txt > bootstrap.sea/bootstrap.js;
	@rm temp.txt
	@echo 'Complete!'

