# MPButton

[![CI Status](http://img.shields.io/travis/btadine/MPButton.svg?style=flat)](https://travis-ci.org/btadine/MPButton)
[![Version](https://img.shields.io/cocoapods/v/MPButton.svg?style=flat)](http://cocoapods.org/pods/MPButton)
[![License](https://img.shields.io/cocoapods/l/MPButton.svg?style=flat)](http://cocoapods.org/pods/MPButton)
[![Platform](https://img.shields.io/cocoapods/p/MPButton.svg?style=flat)](http://cocoapods.org/pods/MPButton)

Have you ever tried to edit the constraints of the elements inside a UIButton? 
Adding new elements without breaking existing layout?
Just make the touchable area bigger?

`MPButton` is a lightweight class that decorates any `UIView` adding `UIControlEvents` (ie. touchUpInside) and customizable touching area. This way, you only need to care about the UI.

As easy as this: 
``swift
let button = MPButton(decoratedView: yourView, hitbox: CGSize(width: 250, height: 90))
button.addTarget(self, action: #selector(self.doSomething), for: .touchUpInside)
``

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

MPButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MPButton"
```

## Author

btadine

## License

MPButton is available under the MIT license. See the LICENSE file for more info.
