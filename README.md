# TransparentChrome

In response to a developer question, I looked for the easiest way to provide a translucent full-window chrome with a blurred background in Mac Catalyst. This solution uses a UISplitViewController in sidebar style as a background view. Potential other methods would be interfacing with AppKit and adding a visual effect view at the root of your window, but I haven't tried going that route here.

This style of window is used in simple media player applications like QuickTime Player, and could be useful to simulate the macOS 'HUD' window style for auxiliary panels.

### Screenshots

![https://hccdata.s3.us-east-1.amazonaws.com/gh_transparentchrome.jpg](https://hccdata.s3.us-east-1.amazonaws.com/gh_transparentchrome.jpg)
