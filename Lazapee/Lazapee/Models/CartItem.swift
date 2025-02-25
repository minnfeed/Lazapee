//
//  CartItem.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift

class CartItem: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var session_id: Int
    @Persisted var product_id: Int
    @Persisted var quantity: Int
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    
    convenience init(id: Int, session_id: Int, product_id: Int, quantity: Int, created_at: Date, modified_at: Date) {
        self.init()
        self.id = id
        self.session_id = session_id
        self.product_id = product_id
        self.quantity = quantity
        self.created_at = created_at
        self.modified_at = modified_at
    }
    
    func displayInfo() {
        print("Cart Item ID: \(id)")
        print("Session ID: \(session_id)")
        print("Product ID: \(product_id)")
        print("Quantity: \(quantity)")
        print("Created At: \(created_at)")
        print("Modified At: \(modified_at)")
    }
}
