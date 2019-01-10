package main

import (
	"C"
	"html"
)

//export escape_html
func escape_html(input *C.char) (output *C.char) {
	s := html.EscapeString(C.GoString(input))
	return C.CString(s)
}

//export unescape_html
func unescape_html(input *C.char) (output *C.char) {
	s := html.UnescapeString(C.GoString(input))
	return C.CString(s)
}

// We need an entry point; it's ok for this to be empty
func main() {}
