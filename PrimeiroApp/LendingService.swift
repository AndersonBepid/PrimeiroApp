//
//  LendingService.swift
//  PrimeiroApp
//
//  Created by Anderson Moura de Oliveira on 15/05/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation

enum LendingServiceKey: String {
    case lendingKey = "lendingKey"
}

class LendingService {
    
    static let shared = LendingService()
    
    var lendings: [Lending] {
        get {
            return getLendings()
        }
        set {
            set(lendings: newValue)
        }
    }

    private func set(lendings: [Lending]) {
        let lendingData = try? JSONEncoder().encode(lendings)
        UserDefaults.standard.set(lendingData, forKey: LendingServiceKey.lendingKey.rawValue)
    }

    private func getLendings() -> [Lending] {
        guard let lendingData = UserDefaults.standard.data(forKey: LendingServiceKey.lendingKey.rawValue),
              let lendings = try? JSONDecoder().decode([Lending].self, from: lendingData)
        else { return [] }
        
        return lendings
    }
}
