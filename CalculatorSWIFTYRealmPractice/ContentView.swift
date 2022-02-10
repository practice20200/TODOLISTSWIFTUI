//
//  ContentView.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                AddTaskView()
                TaskListView()
            }.navigationTitle("Todo")
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    } 
}
