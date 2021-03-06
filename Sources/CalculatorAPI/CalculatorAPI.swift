//
//  CalculatorAPI.swift
//
//  Created by Amir Daliri.
//  Copyright © 2021 Amir Daliri. All rights reserved.
//

import Foundation

public struct CalculatorAPI {
    public let add: Bool
    public let minus: Bool
    public let multiply: Bool
    public let divide: Bool
    public let sin: Bool
    public let cos: Bool
    public let bitcoinRate: Bool

    public init(dictionary: [String: Any]? = nil) {
        self.add = dictionary?["add"] as? Bool ?? true
        self.minus = dictionary?["minus"] as? Bool ?? true
        self.multiply = dictionary?["multiply"] as? Bool ?? true
        self.divide = dictionary?["divide"] as? Bool ?? true
        self.sin = dictionary?["sin"] as? Bool ?? true
        self.cos = dictionary?["cos"] as? Bool ?? true
        self.bitcoinRate = dictionary?["bitcoinRate"] as? Bool ?? true
    }

    public static func offline() -> CalculatorAPI {
        return CalculatorFeatureToggle(dictionary:
            ["add" : true,
            "minus" : true,
            "multiply" : true,
            "divide" : true,
            "sin" : true,
            "cos" : true,
            "bitcoinRate" : false])
    }
}

