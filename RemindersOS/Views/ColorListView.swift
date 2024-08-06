//
//  ColorListView.swift
//  RemindersOS
//
//  Created by Jose David Bustos Huichaleo on 20-06-22.
//

import SwiftUI

struct ColorListView: View {
    let colors = [Color.red,Color.orange,Color.green,Color.blue,Color.purple]
    @Binding var selectedColor: Color
    var body: some View {
        VStack{
            ForEach(colors, id:\.self){ color in
                Image(systemName: selectedColor == color ?
                      Constants.Icons.recordCircleFill : Constants.Icons.circleFill)
                .foregroundColor(color)
                .font(.system(size: 16))
                .clipShape(Circle())
                .onTapGesture{
                    selectedColor = color
                }
                
            }
        }
    }
}

struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        ColorListView(selectedColor: .constant(.blue))
    }
}
