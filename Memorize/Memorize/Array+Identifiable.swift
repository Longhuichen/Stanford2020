//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by shark on 12/24/20.
//

import Foundation


extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
}
