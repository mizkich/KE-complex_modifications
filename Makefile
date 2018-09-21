all:
	scripts/update-json.sh
	scripts/json2exhtml.rb < docs/json/personal_mizkich.json > src/extra_descriptions/personal_mizkich.json.html
	scripts/erb2html.rb < src/index.html.erb > docs/index.html
	scripts/apply-lint.sh

rebuild:
	touch src/json/*
	$(MAKE) all
