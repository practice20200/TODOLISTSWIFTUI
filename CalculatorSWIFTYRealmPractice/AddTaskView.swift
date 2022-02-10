//
//  AddTaskView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import SwiftUI

struct AddTaskView: View {
    @State private var taskTitle: String = ""
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
         
    }
    
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
