//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

Class Items: Identifiable{
    let imageName: String
    let itemName: String
    let quantity: String
    init(shoppingimageName: String, shoppingitemName: String, shoppingQuantity: String){
        self.imageName= shoppingimageName
        self.itemName= shoppingitemName
        self.quantity= shoppingQuantity
    }
}
struct ContentView: View {
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity:4),
        Items(imageName: "eggs", itemName: "Eggs", quantity:12)
        Items(imageName: "orange", itemName: "Oranges", quantity:10)
        Items(imageName: "milk", itemName: "Milk", quantity:8)
        Items(imageName: "butter", itemName: "Butter", quantity:7)
        Items(imageName: "lettuce", itemName: "Lettuce", quantity:5)
    ]
    var body: some View {
        NavigationView{
        List(list){ i in
            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
        }.navigationTitle("Shopping List")
        List{
            Section(header: Text("Fruits")){
                ForEach(list){ i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                }
            }
        }
        List{
            Section(header: Text("Dairy")){
                ForEach(list){ i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                }
            }
        }
        List{
            Section(header: Text("Vegetable")){
                ForEach(list){ i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                }
            }
        }
    }
    }
    
    
}
    
    
    
    

