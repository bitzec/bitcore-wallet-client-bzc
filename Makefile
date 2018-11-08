.PHONY: cover

BIN_PATH:=node_modules/.bin/

all:	bitcore-wallet-client-bzc.min.js

clean:
	rm bitcore-wallet-client-bzc.js
	rm bitcore-wallet-client-bzc.min.js

bitcore-wallet-client-bzc.js: index.js lib/*.js
	${BIN_PATH}browserify $< > $@

bitcore-wallet-client-bzc.min.js: bitcore-wallet-client-bzc.js
	uglify  -s $<  -o $@

cover:
	./node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha -- --reporter spec test
