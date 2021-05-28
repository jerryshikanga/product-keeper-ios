//
//  ContentView.swift
//  Product Keeper
//
//  Created by Jerry Shikanga on 28/05/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body : some View {
        VStack(alignment: .leading, content: {
            Text("Welcome to Product Keeper!").padding().font(.title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Horizontal 1")
                Spacer()
                Text("Horizontal 2")
            }
        })
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
