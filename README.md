# DeclinationNumbers

[![CI Status](https://img.shields.io/travis/Balashov152/DeclinationNumbers.svg?style=flat)](https://travis-ci.org/Balashov152/DeclinationNumbers)
[![Version](https://img.shields.io/cocoapods/v/DeclinationNumbers.svg?style=flat)](https://cocoapods.org/pods/DeclinationNumbers)
[![License](https://img.shields.io/cocoapods/l/DeclinationNumbers.svg?style=flat)](https://cocoapods.org/pods/DeclinationNumbers)
[![Platform](https://img.shields.io/cocoapods/p/DeclinationNumbers.svg?style=flat)](https://cocoapods.org/pods/DeclinationNumbers)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Small project for declination names to numbers on russian language. Example:

### call
``decline(number: i, forOne: "Один", withNumber: true, format: .init(one: "час", two: "часа", eleven: "часов")) + " назад"``

### return 
``0 часов назад, 
Один час назад, 
2 часа назад, 
3 часа назад, 
4 часа назад, 
5 часов назад, 
6 часов назад, 
7 часов назад, 
8 часов назад, 
9 часов назад, 
10 часов назад, 
11 часов назад, 
12 часов назад, 
13 часов назад, 
14 часов назад, 
15 часов назад, 
16 часов назад, 
17 часов назад, 
18 часов назад, 
19 часов назад, 
20 часов назад, 
21 час назад, 
22 часа назад``


### call
``decline(number: i, withNumber: true, format: .init(one: "событие", two: "события", eleven: "событий")``

### return 
``0 событий, 
1 событие, 
2 события, 
3 события, 
4 события, 
5 событий, 
6 событий, 
7 событий, 
8 событий, 
9 событий, 
10 событий, 
11 событий, 
12 событий, 
13 событий, 
14 событий, 
15 событий, 
16 событий, 
17 событий, 
18 событий, 
19 событий, 
20 событий, 
21 событие, 
22 события``


## Installation

DeclinationNumbers is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DeclinationNumbers'
```

## Author

Balashov152, balashov.152@gmail.com

## License

DeclinationNumbers is available under the MIT license. See the LICENSE file for more info.
