//
//  ContentView.swift
//  NavigationView
//
//  Created by calmkeen on 2022/03/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{

            VStack{
                NavigationLink(destination: MapView()){
                    Label("", systemImage: "location")
                }
                Text("2")
                            List {
                                NavigationLink("a", destination: ColorDetail(color: .purple))
                                NavigationLink("b", destination: ColorDetail(color: .pink))
                                NavigationLink("c", destination: ColorDetail(color: .blue))
                            }
                            .navigationTitle("TestNav")
                //macos 로 변경시 사이드바
                List{
                    Label("Item", systemImage: "house")
                    Label("Item1", systemImage: "house")
                    Label("Item2", systemImage: "house")
                }
                .listStyle(SidebarListStyle())
            }
            
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("Mac")
    }
}
