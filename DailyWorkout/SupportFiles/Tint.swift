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
    .init(color: "colorGray1c", value: .colorGray1),
    .init(color: "colorGray2", value: .colorGray2),
    .init(color: "colorGray3", value: .colorGray3),
    .init(color: "colorGray4", value: .colorGray4),
    .init(color: "colorGray5", value: .colorGray5),
    .init(color: "colorGray6", value: .colorGray6),
    ///blue
    .init(color: "colorBlue1 ", value: .colorBlue1),
    .init(color: "colorBlue2", value: .colorBlue2),
    .init(color: "colorBlue3", value: .colorBlue3),
    .init(color: "colorBlue4", value: .colorBlue4),
    .init(color: "colorBlue5", value: .colorBlue5),
    .init(color: "colorBlue6", value: .colorBlue6),
    ///green
    .init(color: "colorGreen ", value: .colorGreen),
    .init(color: "colorGreen1", value: .colorGreen1),
    .init(color: "colorGreen2", value: .colorGreen2),
    .init(color: "colorGreen3", value: .colorGreen3),
    .init(color: "colorGreen4", value: .colorGreen4),
    .init(color: "colorGreen5", value: .colorGreen5),
    .init(color: "colorGreen6", value: .colorGreen6),
    ///red
    .init(color: "colorRed", value: .colorRed),
    .init(color: "colorRed1", value: .colorRed1),
    
    ///orange
    .init(color: "Orange", value: .colorOrange),
    .init(color: "Orange1", value: .colorOrange1),
    .init(color: "Orange2", value:.colorOrange2),
    ///pink
    .init(color: "Pink1", value: .colorPink1),
    .init(color: "Pink2", value: .colorPink2),
    ///purple
    .init(color: "Purple1", value: .colorPurple1),
    .init(color: "Purple2", value: .colorPurple2),
    .init(color: "Purple3", value: .colorPurple3),
    .init(color: "Purple4", value: .colorPurple4),
    .init(color: "Purple5", value: .colorPurple5),
 
]




