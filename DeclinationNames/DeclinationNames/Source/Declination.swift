//
//  Declination.swift
//  DeclinationNames
//
//  Created by Sergey Balashov on 15/05/2019.
//  Copyright © 2019 Sergey Balashov. All rights reserved.
//

import Foundation

public struct Declination {
    static public func get(localizeNumber number: Int, forOne one: String? = nil, format: (one: String, two: String, eleven: String)) -> String {
        
        let decades = number / 10
        let last = number % 10
        
        if number == 1 {
            let localizeOne = (one?.isEmpty ?? true) ? "\(number)" : one!
            return "\(localizeOne) \(format.one)"
        } else if decades <= 1 {
            if 2 ... 4 ~= number {
                return "\(number) \(format.two)"
            } else {
                return "\(number) \(format.eleven)"
            }
        } else if decades > 1 {
            if last == 1 {
                return "\(number) \(format.one)"
            } else if 2 ... 4 ~= last {
                return "\(number) \(format.two)"
            } else {
                return "\(number) \(format.eleven)"
            }
        }
        return ""
    }
}
