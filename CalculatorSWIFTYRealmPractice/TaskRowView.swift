//
//  TaskRowView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import SwiftUI

struct TaskRowView: View {
    @EnvironmentObject private var viewModel: TaskViewModel
    @State private var isComplete: Bool = false
    
    let task : Task
    
    var body: some View {
        
        HStack(spacing: 8){
            Button{
                self.toggleCompletion()
                print("Action handler")
            }label: {
                Image(systemName: isComplete ? "checkmark.circle.fill" : "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(task.completed ? .green: .gray)
            }
            
            Text(task.title)
                .foregroundColor(.black)
            
            Spacer()
        }
        .onAppear(perform: {
            isComplete = task.completed
        })
        .padding(EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20))
        
    }
    
    private func toggleCompletion(){
        isComplete.toggle()
        viewModel.markComplete(id: task.id, completed: isComplete)
    }
    
    
}

