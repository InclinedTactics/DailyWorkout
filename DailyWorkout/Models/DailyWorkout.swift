//
//  Workout.swift
//  DailyWorkout
//
//  Created by Joseph DeWeese on 4/9/24.
//

import RealmSwift
import SwiftUI

class DailyWorkout: Object, ObjectKeyIdentifiable {
    @Persisted var title = ""
    @Persisted var desc = ""
    @Persisted var exerciseList = RealmSwift.List<String>()
    @Persisted var lengthInMinutes = 0
    @Persisted var colorComponents: Components?
    @Persisted var historyList = RealmSwift.List<History>()
    
    var color: Color { Color(colorComponents ?? Components()) }
    var exercises: [String] { Array(exerciseList) }
    var history: [History] { Array(historyList) }
    
    convenience init(title: String, desc: String, exercises: [String], lengthInMinutes: Int, color: Color, history: [History] = []) {
        self.init()
        self.title = title
        self.desc = desc
        exerciseList.append(objectsIn: exercises)
        self.lengthInMinutes = lengthInMinutes
        self.colorComponents = color.components
        for entry in history {
            self.historyList.insert(entry, at: 0)
        }
    }
}

extension DailyWorkout {
    static var data: [DailyWorkout] {
        [
            DailyWorkout(title: "Murph", desc: "Complete as Rx'd for time.", exercises: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, color: Color("Blue1")),
            DailyWorkout(title: "Laredo", desc: "6 Rounds for time", exercises: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, color: Color("Orange2")),
            DailyWorkout(title: "Battle Run", desc: "Complete as Rx'd for time.", exercises: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 1, color: Color("Gray3"))
        ]
    }
}
extension DailyWorkout {
    struct Data {
        var title: String = ""
        var desc: String = ""
        var exercises: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }

    var data: Data {
        return Data(title: title, desc: desc,  exercises: exercises, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    func update(from data: Data) {
        title = data.title
        for exercise in data.exercises {
            if !exercises.contains(exercise) {
                self.exerciseList.append(exercise)
            }
        }
        lengthInMinutes = Int(data.lengthInMinutes)
        colorComponents = data.color.components
    }
}


