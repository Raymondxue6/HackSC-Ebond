//
//  homeView.swift
//  eBond
//
//  Created by Junyao Ren on 2/3/23.
//

import SwiftUI

struct homeView: View {
    @State var autoMatch: Bool = false
    @State var selfMatch: Bool = false
    
    var body: some View {
               TabView{
                   matchView()
                        .tabItem{
                           Label("Home", systemImage: "house.fill")
                       }
                   profileView()
                       .tabItem{
                           Label("Profile", systemImage:"person.fill")
            }
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
