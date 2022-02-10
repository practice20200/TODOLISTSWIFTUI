//
//  AddTaskView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import SwiftUI

struct AddTaskView: View {
    @State private var taskTitle: String = ""
    @EnvironmentObject private var viewModel: TaskViewModel
    var body: some View {
        
        HStack(spacing: 12) {
            TextField("Enter an new task", text: $taskTitle)
        
            Button {
                self.handleSubmit()
            }label: {
                Image(systemName: "plus")
            }
        }.padding(20)
    }
    
    private func handleSubmit(){
        viewModel.addTask(title: taskTitle)
        taskTitle = ""
    }
    
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
