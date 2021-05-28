//
//  AddProductItem.swift
//  Product Keeper
//
//  Created by Jerry Shikanga on 28/05/2021.
//

import SwiftUI

struct AddProductItem: View {
    static let DefaultProductName = "New Product"
    static let DefaultProductPrice = 100
    static let DefaultProductDescription = "A good product"
    static let DefaultProductId = Int.random(in: 1..<99999)

    @State var name = ""
    @State var price = 1
    @State var description = ""
    @State var provider = ""
    let onComplete: (String, String, Int) -> Void
    
    
    var body: some View {
        NavigationView {
          Form {
            Section(header: Text("Name")) {
              TextField("Name", text: $name)
            }
//            Section(header: Text("Genre")) {
//              TextField("Price", int: $price)
//            }
            Section {
                TextField("Description", text: $description)
            }
            Section(header: Text("Provider")) {
              TextField("Provider", text: $provider)
            }
            Section {
              Button(action: addMoveAction) {
                Text("Add Product Item")
              }
            }
          }
          .navigationBarTitle(Text("Add Movie"), displayMode: .inline)
        }
    }
    
    private func addMoveAction() {
//        onComplete(
////          name.isEmpty ? AddProductItem.DefaultProductName : name,
////          price,
////          description.isEmpty ? AddProductItem.DefaultProductDescription : description
//        )
      }
}
