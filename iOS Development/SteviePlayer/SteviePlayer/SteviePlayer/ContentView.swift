//
//  ContentView.swift
//  SteviePlayer
//
//  Created by Steve on 25/2/2022.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
            TabView
            {
                NavigationView
                {
                    Text("Artists Tab.")
                        .navigationBarTitle("Eat my ass!")
                }
                .tabItem
                {
                    Label("Artists", systemImage: "person.circle.fill")
                }
                                
                NavigationView
                {
                    Text("Albums Tab")
                        .navigationTitle("Music, cunts!")
                }
                .tabItem
                {
                   Label("Albums", systemImage: "shuffle.circle.fill")
                }
                
                NavigationView
                {
                    Text("Songs Tab")
                        .navigationTitle("Lick my balls!")
                }
                .tabItem
                {
                    Label("Songs", systemImage: "repeat.circle.fill")
                }
             }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           .preferredColorScheme(.light)
    }
}
