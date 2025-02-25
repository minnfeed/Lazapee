//
//  Product.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//

import Foundation
import RealmSwift

class Product: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var name: String
    @Persisted var desc: String
    @Persisted var SKU: String
    @Persisted var price: Double
    @Persisted var discount_id: Int?
    @Persisted var created_at: Date
    @Persisted var modified_at: Date
    @Persisted var imageURL: String?
    @Persisted var category: Category? // Liên kết với danh mục
    
    convenience init(id: Int, name: String, desc: String, SKU: String, price: Double, discount_id: Int?, created_at: Date, modified_at: Date, imageURL: String?, category: Category?) {
        self.init()
        self.id = id
        self.name = name
        self.desc = desc
        self.SKU = SKU
        self.price = price
        self.discount_id = discount_id
        self.created_at = created_at
        self.modified_at = modified_at
        self.imageURL = imageURL
        self.category = category
    }
}

