//
//  ProductListView.swift
//  pia13swiftjan7
//
//  Created by BillU on 2025-01-07.
//

import SwiftUI

struct ProductListView: View {
    @State var productname = ""
    
    @State var clickedproduct : String?
    
    var body: some View {
        VStack {
            HStack {
                TextField("Product Name", text: $productname)
                
                Button(action: {}) {
                    Text("Add")
                }
            }
            
            
            List {
                Text("Pryl")
                    .onTapGesture {
                        print("Klick på pryl")
                        clickedproduct = "Pryl"
                    }
                Text("Sak")
                Text("Ting")
            }

        }
        .padding()
    }
}

#Preview {
    ProductListView()
}
