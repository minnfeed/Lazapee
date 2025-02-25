//
//  OrderItems.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift

class OrderItems: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var order_id: Int
    @Persisted var product_id: Int
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    
    convenience init(id: Int, order_id: Int, product_id: Int, created_at: Date, modified_at: Date) {
        self.init()
        self.id = id
        self.order_id = order_id
        self.product_id = product_id
        self.created_at = created_at
        self.modified_at = modified_at
    }
    
    func displayInfo() {
        print("Order Item ID: \(id)")
        print("Order ID: \(order_id)")
        print("Product ID: \(product_id)")
        print("Created At: \(created_at)")
        print("Modified At: \(modified_at)")
    }
}
