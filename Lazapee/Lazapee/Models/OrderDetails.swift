//
//  OrderDetails.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift

class OrderDetails: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var user_id: String
    @Persisted var total: Double
    @Persisted var payment_id: Int
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    
    convenience init(id: Int, user_id: String, total: Double, payment_id: Int, created_at: Date, modified_at: Date) {
        self.init()
        self.id = id
        self.user_id = user_id
        self.total = total
        self.payment_id = payment_id
        self.created_at = created_at
        self.modified_at = modified_at
    }
    
    func displayInfo() {
        print("Order ID: \(id)")
        print("User ID: \(user_id)")
        print("Total: \(total)")
        print("Payment ID: \(payment_id)")
        print("Created At: \(created_at)")
        print("Modified At: \(modified_at)")
    }
}
