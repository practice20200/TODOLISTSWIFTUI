//
//  CalculatorSWIFTYRealmPracticeApp.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-08.
//

import SwiftUI

@main
struct CalculatorSWIFTYRealmPracticeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(TaskViewModel())
        }
    }
}
