//
//  Timer.swift
//  TankTimer WatchKit Extension
//
//  Created by CHRISTOPHER STASONIS on 1/29/22.
//

import SwiftUI

struct TimerView: View {
    @State var timerModel: TimerModel
    var tank: TimerModel.TankSelector
    
    var body: some View {
        
        let seconds = tank == TimerModel.TankSelector.left ? timerModel.leftSeconds : timerModel.rightSeconds
        
        let active = tank == timerModel.activeTank
        
        let minutes = seconds / 60
        let seconds = seconds % 60
        
        let displayTime = String(format: "%02d:%02d", minutes, seconds)
        
        Text(displayTime)
            .font(active ? .title : .title2)
            
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        let timerModel = TimerModel()
        
        TimerView(
            timerModel: timerModel,
            tank: TimerModel.TankSelector.left
        )
    }
}
