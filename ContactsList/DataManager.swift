//
//  DataManager.swift
//  ContactsList
//
//  Created by Анна Голубева on 16.06.2021.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    let emails = ["john@mail.ru", "aaron@mail.ru", "jankam@mail.ru", "dowti@mail.ru","isaac@mail.ru"]
    let phoneNumbers = ["12345", "34123", "54892", "53910", "20495"]
    
    private init() {}
}
