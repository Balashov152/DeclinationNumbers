//
//  Declination.swift
//  DeclinationNumbers
//
//  Created by Sergey Balashov on 15/05/2019.
//  Copyright © 2019 Sergey Balashov. All rights reserved.
//

import Foundation

public struct Declination {
    public struct Format {
        let one, two, eleven: String
        
        public init(one: String, two: String, eleven: String) {
            self.one = one
            self.two = two
            self.eleven = eleven
        }
    }
    
    public static func decline(number: Int, withNumber: Bool, forOne: String? = nil, format: Format) -> String {
        let decades = (number % 100) / 10
        let last = (number % 100) % 10

        if number == 0 {
            return withNumber ? "\(number) \(format.eleven)" : "\(format.eleven)"
        } else if number == 1 {
            let localizeOne = (forOne?.isEmpty ?? true) ? "\(number)" : forOne!
            return withNumber ? "\(localizeOne) \(format.one)" : "\(format.one)"
        } else if decades == 1 {
            return withNumber ? "\(number) \(format.eleven)" : "\(format.eleven)"
        } else if decades < 1 || decades > 1 {
            if last == 1 {
                return withNumber ? "\(number) \(format.one)" : "\(format.one)"
            } else if 2 ... 4 ~= last {
                return withNumber ? "\(number) \(format.two)" : "\(format.two)"
            } else {
                return withNumber ? "\(number) \(format.eleven)" : "\(format.eleven)"
            }
        }
        return ""
    }
}
