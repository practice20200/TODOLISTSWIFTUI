//
//  AppDelegate.swift
//  CalculatorSWIFTYRealmPractice
//
//  Created by Apple New on 2022-02-10.
//

import UIKit
import RealmSwift

class AppDelegate : NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        configMigration()
        return true
    }
    
    private func  configMigration(){
        let config = Realm.Configuration(schemaVersion: 2)
        
        Realm.Configuration.defaultConfiguration = config
    }
}
