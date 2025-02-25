
//
//  Discount.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift

class Discount: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var name: String
    @Persisted var desc: String
    @Persisted var discount_percent: Double
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    
    convenience init(id: Int, name: String, desc: String, discount_percent: Double, created_at: Date, modified_at: Date) {
        self.init()
        self.id = id
        self.name = name
        self.desc = desc
        self.discount_percent = discount_percent
        self.created_at = created_at
        self.modified_at = modified_at
    }
    
    func displayInfo() {
        print("Discount ID: \(id)")
        print("Name: \(name)")
        print("Description: \(desc)")
        print("Discount Percent: \(discount_percent)%")
        print("Created At: \(created_at)")
        print("Modified At: \(modified_at)")
    }
}
