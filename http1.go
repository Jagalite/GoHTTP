package main

import (
	"io"
	"net/http"
	"fmt"
)

func hello(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello, World! \n")
}

func main() {
	http.HandleFunc("/", hello)
	http.ListenAndServe(":1337", nil)
}
