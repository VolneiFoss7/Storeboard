//
//  Localizable.swift
//  Scoreboard
//
//  Created by Volnei Foss on 09/11/25.
//

import SwiftUI

extension String {
    var localized: String {
        String(localized: LocalizedStringResource(stringLiteral: self))
    }
}
