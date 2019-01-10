# Embedding Go in a Mac App

This repository is a sample project complimenting a [blog post](https://youngdynasty.net/posts/writing-mac-apps-in-go/) on writing Mac apps in Go.

## Prerequisites

You should have the latest version of [Xcode](https://developer.apple.com/xcode/) and [Go](https://golang.org) installed on your Mac.

## Known Gotchas

The Go code should build automatically as a dependency within the project. However, often Xcode's cache is too aggressive for external builds and can get out of sync.

If you run into any problems, run `make` or build the `libhtmlescaper` target in Xcode manually.

Interestingly enough, building with `xcodebuild` always works, so it's likely a bug within _Xcode.app_. 🐛

- - -

(c) 2019 [Young Dynasty](https://youngdynasty.net)
