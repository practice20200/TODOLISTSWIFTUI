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
    var dueDate: Date? = nil
    
    init(taskObject: TaskObject){
        self.id = taskObject.id.stringValue
        self.title = taskObject.title
        self.completed = taskObject.completed
        self.completedAt = taskObject.completedAt
        self.dueDate = taskObject.dueDate
    }
    
    var formattedDate: String{
        if let date = dueDate{
            let format = "MMM, d, y"
            let dateformatter = DateFormatter()
            dateformatter.dateFormat = format
            return "Due at: " + dateformatter.string(from: date)
        }
        return ""
    }
}
