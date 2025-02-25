//
//   PaymentDetails.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift

class PaymentDetails: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var order_id: Int
    @Persisted var amount: Int
    @Persisted var provider: String
    @Persisted var status: String
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    
    convenience init(id: Int, order_id: Int, amount: Int, provider: String, status: String, created_at: Date, modified_at: Date) {
        self.init()
        self.id = id
        self.order_id = order_id
        self.amount = amount
        self.provider = provider
        self.status = status
        self.created_at = created_at
        self.modified_at = modified_at
    }
    
    func displayInfo() {
        print("Payment ID: \(id)")
        print("Order ID: \(order_id)")
        print("Amount: \(amount)")
        print("Provider: \(provider)")
        print("Status: \(status)")
        print("Created At: \(created_at)")
        print("Modified At: \(modified_at)")
    }
}
