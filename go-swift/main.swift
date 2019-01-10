//
//  AppDelegate.swift
//  go-swift
//
//  Created by Mike Pulaski on 08/01/2019.
//  Copyright © 2019 Young Dynasty. All rights reserved.
//

import AppKit
import HTMLEscaper

extension String {
    public func escapedHTMLString() -> String? {
        return self.withCString() {
            guard let v = escape_html(UnsafeMutablePointer(mutating: $0)) else { return nil }
            return String(bytesNoCopy: v, length: strlen(v), encoding: .utf8, freeWhenDone: true)
        }
    }

    public func unescapedHTMLString() -> String? {
        return self.withCString() {
            guard let v = unescape_html(UnsafeMutablePointer(mutating: $0)) else { return nil }
            return String(bytesNoCopy: v, length: strlen(v), encoding: .utf8, freeWhenDone: true)
        }
    }
}

let original = "<h3>hello go</h3>!"
let escaped = original.escapedHTMLString() ?? "null"
let unescaped = escaped.unescapedHTMLString() ?? "null"

print("\(original) -> \(escaped) -> \(unescaped)")
