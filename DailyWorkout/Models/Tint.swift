//
//  Tint.swift
//  DailyWorkout
//
//  Created by Joseph DeWeese on 4/9/24.
//

import SwiftUI



/// Custom Tint Colors For Transaction Row
struct TintColor: Identifiable {
    let id: UUID = .init()
    var color: String
    var value: Color
}

var tints: [TintColor] = [
    ///gray
    .init(color: "Gray1", value: .gray1),
    .init(color: "Gray2", value: .gray2),
    .init(color: "Gray3", value: .gray3),
    .init(color: "Gray4", value: .gray4),
    .init(color: "Gray5", value: .gray5),
    .init(color: "Gray6", value: .gray6),
    ///blue
    .init(color: "colorBlue1 ", value: .blue1),
    .init(color: "colorBlue2", value: .blue2),
    .init(color: "colorBlue3", value: .blue3),
    .init(color: "colorBlue4", value: .blue4),
    .init(color: "colorBlue5", value: .blue5),
    .init(color: "colorBlue6", value: .blue6),
    ///green
    .init(color: "Green", value: .green),
    .init(color: "Green1", value: .green1),
    .init(color: "Green2", value: .green2),
    .init(color: "Green3", value: .green3),
    .init(color: "Green4", value: .green4),
    .init(color: "Green5", value: .green5),
    .init(color: "Green6", value: .green6),
    ///red
    .init(color: "Red", value: .red),
    .init(color: "Red1", value: .red1),
    
    ///orange
    .init(color: "Orange", value: .orange),
    .init(color: "Orange1", value: .orange1),
    .init(color: "Orange2", value:.orange2),
    ///pink
    .init(color: "Pink1", value: .pink1),
    .init(color: "Pink2", value: .pink2),
    ///purple
    .init(color: "Purple1", value: .purple1),
    .init(color: "Purple2", value: .purple2),
    .init(color: "Purple3", value: .purple3),
    .init(color: "Purple4", value: .purple4),
    .init(color: "Purple5", value: .purple5),
 
]




