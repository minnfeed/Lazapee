//
//  ViewController.swift
//  Lazapee
//
//  Created by Eddie on 25/2/25.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()

                let newProduct = Product()
                newProduct.name = "MacBook Pro M3"
                newProduct.price = 2499.99
                newProduct.category = "Laptop"
                newProduct.isFavorite = true

                try! realm.write {
                    realm.add(newProduct)
                }
                print("📦 Đã thêm sản phẩm vào database!")
                
                // Kiểm tra xem dữ liệu đã lưu chưa
                let products = realm.objects(Product.self)
                for product in products {
                    print("✅ \(product.name) - \(product.price)$ - \(product.category)")
                }
    }


}

