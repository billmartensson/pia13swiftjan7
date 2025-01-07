//
//  LetsNavView.swift
//  pia13swiftjan7
//
//  Created by BillU on 2025-01-07.
//

import SwiftUI

struct LetsNavView: View {
    var body: some View {
        
        NavigationSplitView {
            NavigationLink {
                Text("ABC")
            } label: {
                Text("XYZ")
            }
        } detail: {
            Text("START")
        }
        
    }
}

#Preview {
    LetsNavView()
}
