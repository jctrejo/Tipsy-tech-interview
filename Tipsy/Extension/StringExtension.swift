//
//  StringExtension.swift
//  Tipsy
//
//  Created by Jose C. Hernandez on 13/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    func localizeWith(arguments: CVarArg...) -> String {
        let localizedValue = self.localized
        return String(format: localizedValue, arguments: arguments)
    }
    
    func isEqualToString(find: String) -> Bool {
        return String(format: self) == find
    }
}
