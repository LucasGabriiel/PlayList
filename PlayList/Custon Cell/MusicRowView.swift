//
//  MusicRowView.swift
//  PlayList
//
//  Created by user256729 on 5/11/24.
//

import SwiftUI

struct MusicRowView: View {
    
    let inspiration: MusicInspiration
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(inspiration.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading, spacing:  5) {
                Text(inspiration.name)
                
                Text(inspiration.description)
                    .font(.caption)
            }
            .padding(.trailing, 10)
            .padding(.vertical, 5)
            
        }
    }
}

struct MusicRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            MusicRowView(inspiration: MusicInspiration.example1())
            MusicRowView(inspiration: MusicInspiration.example2())
        }
        .padding()
    }
}



