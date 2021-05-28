//
//  ProductListView.swift
//  Product Keeper
//
//  Created by Jerry Shikanga on 28/05/2021.
//

import SwiftUI

struct ProductListView: View {
    
    @State var productItems = ProductListView.makeDefaultProducts()
    @State var isPresented = false
    
    var body: some View {
        var body: some View {
            NavigationView{
                List {
                    ProductItem(productName : "Test Product 1", productId : 1, productPrice : 1, productDescription : "1 is a good product", productProvider : "Test Provider 1")
                    
                    ProductItem(productName : "Test Product 2", productId : 2, productPrice : 2, productDescription : "2 is a good product", productProvider : "Test Provider 2")
                    
                    ProductItem(productName : "Test Product 3", productId : 3, productPrice : 3, productDescription : "3 is a good product", productProvider : "Test Provider 3")
                }
            }
        }
    }
    
    func deleteProductItem(at offsets: IndexSet) {
      productItems.remove(atOffsets: offsets)
    }
    
    func addProductItem(productName: String, productPrice: Int, productDescription: String, productProvider: String) {
        let newProductItem = ProductItem(
            productName : productName,
            productId : 1,
            productPrice : productPrice,
            productDescription : productDescription,
            productProvider : productProvider
          )
        productItems.append(newProductItem)
      }
    
    static func makeDefaultProducts() -> [ProductItem] {
        let product1 = ProductItem(
            productName : "Test Product 1",
            productId : 1,
            productPrice : 1,
            productDescription : "1 is a good product",
            productProvider : "Test Provider 1"
          )
        
        let product2 = ProductItem(
          productName : "Test Product 2",
          productId : 2,
          productPrice : 2,
          productDescription : "2 is a good product",
          productProvider : "Test Provider 2"
        )
        
        let product3 = ProductItem(
          productName : "Test Product 3",
          productId : 3,
          productPrice : 3,
          productDescription : "3 is a good product",
          productProvider : "Test Provider 3"
        )

      return [product1, product2, product3]
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
