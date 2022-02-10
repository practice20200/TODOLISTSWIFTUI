//
//  TaskRowView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-09.
//

import SwiftUI

struct TaskRowView: View {
    let task : Task
    
    var body: some View {
        
        HStack(spacing: 8){
            Button{
                print("Action handler")
            }label: {
                Image(systemName: task.completed ? "check.circle.fill" : "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(task.completed ? .green: .gray)
            }
            
            Text(task.title)
                .foregroundColor(.black)
            
            Spacer()
        }.padding(EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20))
        
    }
}

//struct TaskRowView_Previews: PreviewProvider {
    //static var previews: some View {
   //     TaskRowView(task: Task(id: "1", title: "swimmimg", completed: false))
  //  }
//}
