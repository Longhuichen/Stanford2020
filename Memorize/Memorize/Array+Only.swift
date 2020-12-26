//
//  Array+Only.swift
//  Memorize
//
//  Created by shark on 12/24/20.
//

import Foundation

extension  Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
