//
//  TaskViewModel.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import Foundation
import SwiftUI
import RealmSwift

final class TaskViewModel: ObservableObject{
    @Published var tasks: [Task] = []
    
    private var token: NotificationToken?
    
    init(){
        setUpObserver()
    }
    
    deinit{
        token?.invalidate()
    }
    
    private func setUpObserver(){
        do {
            let realm = try Realm()
            let results = realm.objects(TaskObject.self)
            
            token = results.observe({ [weak self] changes in
                self?.tasks = results.map(Task.init).sorted(by: {a, b in
                   a.completedAt > b.completedAt
                })
            })
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func addTask(title: String) {
        let taskObject = TaskObject(value: [
            "title" : title,
            "completed": false
        ])
        
        do {
            let realm = try Realm()
            try realm.write{
                realm.add(taskObject)
            }
        }catch let error {
            print(error.localizedDescription)
        }
    }
    
    func markComplete(id: String, completed: Bool) {
        do {
            let realm = try Realm()
            let objectId = try ObjectId(string: id)
            let task = realm.object(ofType: TaskObject.self, forPrimaryKey: objectId)
        
            try realm.write{
                task?.completed = completed
                task?.completedAt = Date()
            }
        }catch let error{
            print(error.localizedDescription)
        }
    }
    
    func remove(id: String){
        do{
         let realm = try Realm()
         let objectId = try ObjectId(string: id)
         if let task = realm.object(ofType: TaskObject.self, forPrimaryKey: objectId){
             try realm.write{
                realm.delete(task)
             }
        }
        }catch{
           
        }
    }
    
    func update(id: String, newTitle: String){
        do{
            let realm = try Realm()
            let objectId = try ObjectId(string: id)
            let task = realm.object(ofType: TaskObject.self, forPrimaryKey: objectId)
            
            try realm.write{
                task?.title = newTitle
            }
        }catch{
            print(error.localizedDescription)
        }
    }
}
