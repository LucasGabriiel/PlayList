//
//  ContentView.swift
//  PlayList
//
//  Created by user256729 on 5/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inspiration = MusicInspiration.examples()
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(inspiration){ inspiration in Text(inspiration.name)
                }
            }
            .navigationTitle("Music")
        }
    }
}



struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
