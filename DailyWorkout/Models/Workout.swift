//
//  Workout.swift
//  DailyWorkout
//
//  Created by Joseph DeWeese on 4/9/24.
//

import Foundation

struct Workout: Identifiable, Codable {
    let id: UUID
    var title: String
    var desc: String
    var exercises: [Exercise]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID, title: String, desc: String, exercises: [Exercise], lengthInMinutes: Int, theme: Theme, history: [History]) {
        self.id = id
        self.title = title
        self.desc = desc
        self.exercises = exercises
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
        self.history = history
    }
}

extension Workout {
    struct Exercise: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: Workout {
        Workout(title: "",desc: "", exercises: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension Workout {
    static let sampleData: [Workout] =
    [
        Workout(title: "Murph",
                desc: "For Time",
                   exercises: ["1 Mile Run", "100 Pull-Ups", "200 Push-ups", "300 Air Squats", "1 Mile Run"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        Workout(title: "Battle Run",
                desc: "15 minute battle run: 2 minute jog, 1 minute run |  Alternate till complete, for overall time. ",
                   exercises: ["15 minute run"],
                   lengthInMinutes: 15,
                   theme: .orange),
        Workout(title: "Loredo",
                desc: "6 Rounds For Time",
                   exercises: ["24 Air Squats", "24 Push-ups", "24 walking lunge steps", "400 Meter Run"],
                   lengthInMinutes: 60,
                   theme: .poppy)
    ]
}

