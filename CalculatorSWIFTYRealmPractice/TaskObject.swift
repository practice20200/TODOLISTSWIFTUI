//
//  File.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import Foundation
import RealmSwift

class TaskObject: Object{
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title: String
    @Persisted var completed: Bool = false
    @Persisted var completedAt: Date = Date()
}
