//
//  ColorEditView.swift
//  PassArrayvalueBySheet
//
//  Created by sako0602 on 2023/01/31.
//

import SwiftUI

struct ColorEditView: View {

    let save: (String, Color) -> Void
    let cancel: () -> Void
    @State private var selectedPicker = 0
    @Binding var colorArray: ColorData
    @State private var colorArray1 = [
        ColorData(name: "むらさき", color: .purple),
        ColorData(name: "くろ", color: .black),
        ColorData(name: "しあん", color: .cyan),
        ColorData(name: "グレー", color: .gray)
    ]
    
    var body: some View {
        NavigationStack {
            Picker("hoge", selection: $selectedPicker){
                ForEach(colorArray1.indices, id: \.self) { index in
                        Text(colorArray1[index].name).tag(index)
                            .foregroundColor(colorArray1[index].color)
                }
            }
            .pickerStyle(.wheel)
            .toolbar { //NavigationStackにつけると表示されない
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        cancel()
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("save"){
                        print(">>>",selectedPicker)//selectedPickerはピッカーを回せば値を取得できる。
                        save(colorArray1[selectedPicker].name, colorArray1[selectedPicker].color)
                    }
                }
            }
        }
    }
}

struct ColorEditView_Previews: PreviewProvider {
    static var previews: some View {
        ColorEditView(save: { _, _ in}, cancel: {}, colorArray: Binding<ColorData>.constant(ColorData(name: "あか", color: .red)))
    }
}
