//
//  TaskListView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import SwiftUI

struct TaskListView: View {

    private var mockTasks = [
        Task(id: "1", title: "task1", completed: false),
        Task(id: "2", title: "task2", completed: false),
        Task(id: "3", title: "task3", completed: false),
        Task(id: "4", title: "task4", completed: false)
    ]
    
    var body: some View {
        
        ScrollView{
            
            LazyVStack(alignment: .leading) {
                ForEach(mockTasks, id: \.id) { task in
                    
                    TaskRowView(task: task)
                    Divider().padding(.leading, 20)
                    
                    
                }
            }
            
            
        }
        
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
