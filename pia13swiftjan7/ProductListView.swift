//
//  ProductListView.swift
//  pia13swiftjan7
//
//  Created by BillU on 2025-01-07.
//

import SwiftUI

struct ProductListView: View {
    @State var productname = ""
    
    @Binding var clickedproduct : String?
    
    @State private var image = Image(systemName: "photo")
    
    
    var body: some View {
        VStack {
            if UIDevice.current.userInterfaceIdiom == .pad {
                Text("IPAD!")
            } else {
                Text("IPHONE!")
            }
            
            image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .dropDestination(for: Data.self) { items, location in
                            guard let item = items.first else { return false }
                            guard let uiImage = UIImage(data: item) else { return false }
                            image = Image(uiImage: uiImage)
                            return true
                        }
                        .draggable(Image(systemName: "photo"))
            
            
            HStack {
                TextField("Product Name", text: $productname)
                
                Button(action: {
                    print("NOW ADD!!")
                }) {
                    Text("Add")
                }
                .keyboardShortcut("b")
            }
            
            
            List {
                Text("Pryl")
                    .onTapGesture {
                        clickedproduct = "Pryl"
                    }
                Text("Sak")
                    .onTapGesture {
                        clickedproduct = "Sak"
                    }
                Text("Ting")
                    .onTapGesture {
                        clickedproduct = "Ting"
                    }
            }

        }
        .padding()
        .onAppear() {
            checkOrientation()
        }
    }
    
    func checkOrientation() {
        print("CHECK ORIENTATION")
        if UIDevice.current.orientation == .portrait {
            print("PORTRAIT")
        }
        if UIDevice.current.orientation == .landscapeLeft {
            print("LANDSCAPE LEFT")
        }
        if UIDevice.current.orientation == .landscapeRight {
            print("LANDSCAPE RIGHT")
        }

    }
    
}

#Preview {
    ProductListView(clickedproduct: .constant(nil))
}
