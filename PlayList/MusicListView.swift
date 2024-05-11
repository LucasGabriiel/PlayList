//
//  MusicListView.swift
//  PlayList
//
//  Created by user256729 on 5/8/24.
//

import SwiftUI

struct MusicListView: View {
    @State private var inspiration = MusicInspiration.examples()
    let headerPercentage = 0.3
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                VStack(alignment: .leading) {
                    Image("album-cover")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: geometry.size.height * headerPercentage)
                    Spacer()
                }.padding(.top, 60)
                ScrollView {
                    VStack(alignment: .leading, spacing: 1) {
                        HStack{
                            Image(systemName: "arrow.down.circle.fill")
                            Image(systemName: "person.fill.badge.plus")
                            Spacer()
                            Image(systemName: "play.circle.fill").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).foregroundStyle(.orange).frame(width: 33)
                        }.padding(.horizontal, 16)
                        
                        VStack(alignment: .leading){
                            Text("Playlist Maneira")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                            Text("Essa playlist é destinada aos melhores Jr. Learners do Planeta Adda")
                                .font(.callout)
                                .multilineTextAlignment(.leading)
                        }.padding(.horizontal, 16)
                            .padding(.top)
                        
                        HStack(alignment: .top, spacing: 1.0){
                            Image("grogu")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.top)
                                .frame(width: 25)
                                .clipShape(Circle())
                                .padding(.horizontal, 16)
                            Text("Playlist de Yosda")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .padding(.top)
                        }
                        
                        
                        ListaMusica(inspiration: inspiration)
                            
                    }
                    .background(content: { Color.white })
                    .padding(.top, geometry.size.height * headerPercentage + 80)
                    
                }
            }.ignoresSafeArea()
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
        VStack(alignment: .leading) {
            ForEach(inspiration) { inspiration in
                MusicRowView(inspiration: inspiration).padding(.vertical, 2)
            }
        }.padding(.top)
    }
}
