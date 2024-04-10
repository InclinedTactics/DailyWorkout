//
//  History.swift
//  DailyWorkout
//
//  Created by Joseph DeWeese on 4/9/24.
//

import Foundation
import RealmSwift

class History: EmbeddedObject, ObjectKeyIdentifiable {
    @Persisted var date: Date?
    @Persisted var exerciseList = List<String>()
    @Persisted var lengthInMinutes: Int = 0
    @Persisted var transcript: String?
    var exercises: [String] { Array(exerciseList) }

    convenience init(date: Date = Date(),desc: String, exercises: [String], lengthInMinutes: Int, transcript: String? = nil) {
        self.init()
        self.date = date
        exerciseList.append(objectsIn: exercises)
        self.lengthInMinutes = lengthInMinutes
        self.transcript = transcript
    }
}
