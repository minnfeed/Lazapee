//
//  ShoppingSession.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift


class ShoppingSession: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var user_id: String
    @Persisted var total: Double
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    
    convenience init(id: Int, user_id: String, total: Double, created_at: Date, modified_at: Date) {
        self.init()
        self.id = id
        self.user_id = user_id
        self.total = total
        self.created_at = created_at
        self.modified_at = modified_at
    }
    
    func displayInfo() {
        print("Session ID: \(id)")
        print("User ID: \(user_id)")
        print("Total: \(total)")
        print("Created At: \(created_at)")
        print("Modified At: \(modified_at)")
    }
}
