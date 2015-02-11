build:
	docker build -t bartojs/bootclj .

run:
	docker run -it --rm bartojs/bootclj 

test:
	docker run -it --rm bartojs/bootclj -d com.github.jnr/jnr-ffi repl
