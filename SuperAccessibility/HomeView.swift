//
//  HomeView.swift
//  SuperAccessibility
//
//  Created by Regan Laurell on 3/16/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                // TODO: Navigate without a copy of Content View
                NavigationLink(destination: ContentView()) {
                    Text("Dynamic Text").padding()
                }
//                .isDetailLink(true)
                .background(Color.gray)
                .cornerRadius(5)
            }
            .navigationBarTitle(Text("Super Accessibility"))
            .foregroundColor(.black)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
