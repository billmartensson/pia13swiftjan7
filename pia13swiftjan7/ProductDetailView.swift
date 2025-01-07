//
//  ProductDetailView.swift
//  pia13swiftjan7
//
//  Created by BillU on 2025-01-07.
//

import SwiftUI

struct ProductDetailView: View {
    
    @State var productname : String?
    
    var body: some View {
        VStack {
            Text("Product Detail View")
            
            
            Text("Product Name")
            if productname == nil {
                Text("No product name")
            } else {
                Text(productname!)
            }
            
            
            
            ViewThatFits {
                HStack {
                    Text("Category A")
                        .frame(width: 200, height: 50)
                        .background(Color.yellow)
                    Text("Category B")
                        .frame(width: 200, height: 50)
                        .background(Color.yellow)
                    Text("Category C")
                        .frame(width: 200, height: 50)
                        .background(Color.yellow)

                }
                VStack {
                    Text("Category A")
                        .frame(width: 200, height: 50)
                        .background(Color.yellow)
                    Text("Category B")
                        .frame(width: 200, height: 50)
                        .background(Color.yellow)
                    Text("Category C")
                        .frame(width: 200, height: 50)
                        .background(Color.yellow)

                }
            }
            
            
            
        }
    }
}

#Preview {
    ProductDetailView()
}
