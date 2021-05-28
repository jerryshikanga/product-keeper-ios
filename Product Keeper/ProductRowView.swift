//
//  ProductRowView.swift
//  Product Keeper
//
//  Created by Jerry Shikanga on 28/05/2021.
//

import SwiftUI

struct ProductRowView: View {
    let productItem : ProductItem
    
    var body: some View {
      VStack(alignment: .leading) {
        Text(productItem.productName).font(.title)
        HStack {
            Text(productItem.productProvider).font(.caption)
            Spacer()
            Text(productItem.productDescription).font(.caption)
        }
      }
    }
}

