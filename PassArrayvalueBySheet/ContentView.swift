//
//  ContentView.swift
//  PassArrayvalueBySheet
//
//  Created by sako0602 on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlesentedColorEditView = false
    @State private var colorIndex = 0
//    @State private var colorArray = [
//        ColorItem(rawValue: 0),
//        ColorItem(rawValue: 1),
//        ColorItem(rawValue: 2),
//        ColorItem(rawValue: 3),
//        ColorItem(rawValue: 4)
//    ]
    @State private var colorArray = [
        ColorData(name: "あか", color: .red),
        ColorData(name: "あお", color: .blue),
        ColorData(name: "みどり", color: .green),
        ColorData(name: "オレンジ", color: .orange)
    ]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(colorArray.indices, id: \.self) { index in
                    HStack {
                           Text(colorArray[index].name)
                               .foregroundColor(colorArray[index].color)
                        Spacer()
                        Button {
                            colorIndex = index
                            isPlesentedColorEditView = true
                        } label: {
                            Image(systemName: "paintbrush.pointed.fill")
                                .foregroundColor(colorArray[index].color)
                        }
                    }
                    .sheet(isPresented: $isPlesentedColorEditView) {
                        ColorEditView(
                            save: { name,color in
                                colorArray[colorIndex].name = name
                                colorArray[colorIndex].color = color
                                isPlesentedColorEditView = false
                            },
                            cancel: {
                                isPlesentedColorEditView = false
                            },
                            colorArray: $colorArray[colorIndex])
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
