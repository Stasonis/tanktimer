//
//  TimerModel.swift
//  TankTimer
//
//  Created by CHRISTOPHER STASONIS on 1/29/22.
//

import Foundation
import SwiftUI

final class TimerModel: ObservableObject {
    var leftSeconds: Int = 1335
    var rightSeconds: Int = 3720
    var diferentialWarningSeconds: Int = 1800
    
    var activeTank = TankSelector.left
    
    //var timeScheduler = TimeScheduler()
    
    private var timer: Timer? = nil

    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimers), userInfo: nil, repeats: true)
    }
    
    
    var curentDifferential: Int  {
        max(leftSeconds, rightSeconds) - min(leftSeconds, rightSeconds)
    }
    
    @objc func updateTimers() {
        
        switch activeTank {
            case .left:
               leftSeconds += 1
                print("Left Seconds: \(leftSeconds)")
            case .right:
                rightSeconds += 1
                print("Right Seconds: \(rightSeconds)")
            case .off:
                print("Tank Off")
        }
        
        print("Timer triggered")
    }
    
    enum TankSelector: String, CaseIterable, Identifiable {
        case left = "L"
        case off = "O"
        case right = "R"
        
        var id: String {rawValue}
    }
    
    /*class TimeScheduler {
        
        private var timer: Timer? //Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimers), userInfo: nil, repeats: true)
        
        init() {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimers), userInfo: nil, repeats: true)
        }
        
        @objc func updateTimers() {
            
            switch self.activeTank {
                case .left {
                    
                }
            }
            
            print("Timer triggered")
        }
    }*/
}
