all: bin/htmlescaper.a

bin/htmlescaper.a:
	@if [ -z "$(shell which go)" ]; then echo "error: Go must be installed (golang.org)."; exit 1; fi

	go build --buildmode=c-archive -o libhtmlescaper.a

clean:
	rm libhtmlescaper.h libhtmlescaper.a
