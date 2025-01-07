//
//  ContentView.swift
//  pia13swiftjan7
//
//  Created by BillU on 2025-01-07.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    @State var currentproduct : String?
    
    var body: some View {
        if horizontalSizeClass == .regular && verticalSizeClass == .regular {
            HStack {
                ProductListView(clickedproduct: currentproduct)
                    .frame(width: 300)
                ProductDetailView(productname: currentproduct)
                    .frame(maxWidth: .infinity)
            }
        } else {
            VStack {
                ProductListView()
            }
        }
        
    }
}

#Preview {
    ContentView()
}


/*
 
 if horizontalSizeClass == .compact && verticalSizeClass == .regular {
     Text("iPhone portrait")
 }
 if horizontalSizeClass == .compact && verticalSizeClass == .compact {
     Text("iPhone landscape")
 }

 if horizontalSizeClass == .regular && verticalSizeClass == .regular {
     Text("iPad")
 }
 
*/
 
