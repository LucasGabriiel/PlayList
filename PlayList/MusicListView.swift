//
//  MusicListView.swift
//  PlayList
//
//  Created by user256729 on 5/8/24.
//

import SwiftUI

struct MusicListView: View {
    @State private var inspiration = MusicInspiration.examples()
    
    var body: some View {
        NavigationView {
            ListaMusica(inspiration: inspiration)
            .navigationTitle("Playlist Maneira")
        }
    }
}

struct MusicListView_Previews: PreviewProvider{
    static var previews: some View {
        MusicListView()
    }
}

struct ListaMusica: View {
    @State var inspiration : [MusicInspiration]
    
    var body: some View {
        List {
            ForEach(inspiration) { inspiration in
                MusicRowView(inspiration: inspiration)
            }
            .listRowSeparator(.hidden)
            .listRowInsets(.init(top: 10, leading: 10, bottom: 0, trailing: 10))
        }
        .listStyle(.plain)
    }
}
