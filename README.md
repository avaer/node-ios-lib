# Node.js iOS lib

This repo lets you build `NodeMobile.framework` for iOS (`arm64`).

This is useful for embedding `node` in an iOS app. You could theoretically use this to run true node on iOS, but it's mostly intended to provided an embedded JS environment.

Note that using this in an app can get it rejected on the App Store -- Apple doesn't approve of JITting downloaded Javascript code (which this repo does) unless you use iOS's own Javascript engine.

## Instructions

```
1. Get `xcode` on the Mac App Store
1. `xcode-select --switch /Applications/Xcode.app/Contents/Developer`
1. Clone this repo
1. `cd` into this repo
1. `./build.sh # will take a while`
1. `ls -la ./out_ios/Release-iphoneos/NodeMobile.framework # the built framework -- use it in xcode in an iOS app`
```

This repo comes with extra hacks that add the `ios` OS target.