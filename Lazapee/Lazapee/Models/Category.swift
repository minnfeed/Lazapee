//
//  Category.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//
import Foundation
import RealmSwift

class Category: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var name: String
    @Persisted var products = List<Product>() // Danh sách sản phẩm thuộc danh mục
    
    convenience init(id: Int, name: String) {
        self.init()
        self.id = id
        self.name = name
    }
}
