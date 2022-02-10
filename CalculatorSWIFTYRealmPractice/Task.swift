//
//  Task.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-08.
//

import Foundation
struct Task : Identifiable {
    var id: String
    var title: String
    var completed: Bool
    var completedAt: Date = Date()
    
    init(taskObject: TaskObject){
        self.id = taskObject.id.stringValue
        self.title = taskObject.title
        self.completed = taskObject.completed
        self.completedAt = taskObject.completedAt
    }
}
