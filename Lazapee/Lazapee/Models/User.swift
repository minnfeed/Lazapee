//
//  User.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//

import Foundation
import RealmSwift

class User: Object {
    @Persisted(primaryKey: true) var id: String = UUID().uuidString
    @Persisted var fullName: String
    @Persisted var birthDate: Date
    @Persisted var password: String
    @Persisted var phoneNumber: String
    @Persisted var email: String
    @Persisted var address: String
    
    convenience init(fullName: String, birthDate: String, password: String, phoneNumber: String, email: String, address: String) {
        self.init()
        self.fullName = fullName
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        self.birthDate = dateFormatter.date(from: birthDate) ?? Date()
        
        self.password = password
        self.phoneNumber = phoneNumber
        self.email = email
        self.address = address
    }
    
    func displayInfo() {
        print("ID: \(id)")
        print("Họ tên: \(fullName)")
        print("Ngày sinh: \(birthDate)")
        print("Số điện thoại: \(phoneNumber)")
        print("Email: \(email)")
        print("Địa chỉ: \(address)")
    }
}
