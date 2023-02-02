//
//  ColorData.swift
//  PassArrayvalueBySheet
//
//  Created by sako0602 on 2023/01/31.
//

import Foundation
import SwiftUI

struct ColorData: Identifiable {
    let id = UUID()
    var name: String
    var color: Color
}

//enum ColorItem: Int, CaseIterable, Identifiable {
//    var id: ColorItem {self}
//    case red
//    case blue
//    case yellow
//    case green
//    case orange
//    
//    var name: String {
//        switch self {
//        case .red: return "あか"
//        case .blue: return "あお"
//        case .yellow: return "きいろ"
//        case .green: return "みどり"
//        case .orange: return "オレンジ"
//        }
//    }
//    
//    var color: Color {
//        switch self {
//        case .red: return .red
//        case .blue: return .blue
//        case .yellow: return .yellow
//        case .green: return .green
//        case .orange: return .orange
//        }
//    }
//}
