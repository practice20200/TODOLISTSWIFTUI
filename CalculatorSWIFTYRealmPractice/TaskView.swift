//
//  TaskView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-10.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject private var viewModel : TaskViewModel
    @Environment(\.presentationMode) var presentaionMode: Binding<PresentationMode>
    @State private var taskTitle : String = ""
    
    
    let task : Task
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            VStack(alignment: .leading, spacing: 4){
                
                Text("Title")
                    .foregroundColor(.gray)
                TextField("Enter title", text :$taskTitle)
                    .font(.largeTitle)
                Divider()
            }
            
            Button{
                deleteAction()
            } label :{
                HStack{
                    Image(systemName: "trash.fill")
                    Text("Delete")
                }
                .foregroundColor(.red)
            }
            Spacer()
        }
        .navigationTitle("Edit Todo")
        .padding(24)
        .onAppear {
            taskTitle = task.title
        }
        .onDisappear(perform: updateTask)
    }
    
    private func updateTask(){
        viewModel.update(id: task.id, newTitle: taskTitle)
    }
    
    private func deleteAction(){
        viewModel.remove(id: task.id)
        presentaionMode.wrappedValue.dismiss()
    }
}

//struct TaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskView()
//    }
//}
