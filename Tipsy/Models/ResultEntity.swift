//
//  ResultEntity.swift
//  Tipsy
//
//  Created by Jose C. Hernandez on 13/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct ResultTotal {
    var billTotal = String()
    var percentage = Int()
    var people = String()
    
    init(billTotal: String = "",
         percentage: Int = 0,
         people: String = "") {
        self.billTotal = billTotal
        self.percentage = percentage
        self.people = people
    }
}
