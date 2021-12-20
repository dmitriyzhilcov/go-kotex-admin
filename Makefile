build:
	GOARCH=wasm GOOS=js go build -o web/app.wasm cmd/app/main.go
	go build -race -o bin/main cmd/app/main.go

run: build
	./bin/main