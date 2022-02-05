//
//  TankTimerApp.swift
//  TankTimer WatchKit Extension
//
//  Created by CHRISTOPHER STASONIS on 1/28/22.
//

import SwiftUI

@main
struct TankTimerApp: App {
    
    @StateObject private var timerModel = TimerModel()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(timerModel: timerModel)
                    .environmentObject(timerModel)
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
