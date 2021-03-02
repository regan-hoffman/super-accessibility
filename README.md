# About
Super Accessibility is an app to explore working with Accessibility in SwiftUI.

## Dynamic Text
SwiftUI in iOS14 scales automatically with both system fonts and custom fonts.

Unfortunately, if an app uses SwiftUI and supports iOS13, text does not scale dynamically with custom fonts. 

To solve this, [this Hacking with Swift](https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-dynamic-type-with-a-custom-font) provides a great jumping off point for creating your own way to scale font dynamically. 

The article provides a walk-through in creating a view modifier. 

The environment variable `sizeCategory` updates the view every time the device detects a change in settings. When a change in size is detected `UIFontMetrics.default.scaledValue(for: size)` scales the font dynamically. 

By adding an extension on `View`, the modifier can neatly be applied in SwiftUI with `.scaledFont(size: 17)`.

In this implementation, the font name defaults to the "Cabin", but other fonts would be able to passed in as well. 

```
func scaledFont(font: String = "Cabin", size: CGFloat) -> some View
```
