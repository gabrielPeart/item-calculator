//
//  Wage.swift
//  window-shopper
//
//  Created by Lukas Holmberg on 2019-02-25.
//  Copyright © 2019 Lukas Holmberg. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(wage / price))
    }
}
