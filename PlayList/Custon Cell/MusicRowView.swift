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
        HStack( spacing: 8.0) {
            Image(inspiration.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 1))
            
            VStack(alignment: .leading, spacing:  7.0) {
                Text(inspiration.name)
                
                Text(inspiration.description)
                    .font(.caption)
            }
            .padding(.vertical, 5)
            Spacer()
            VStack(alignment: .center) {
                Spacer()
                Image(systemName: "ellipsis")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.black)
                .frame(height: 5)
                Spacer()
            }
                
        }.padding(.horizontal, 5)
    }
}

#Preview {
    MusicRowView(inspiration: .example1()).padding()
}


