//
//  TankSelector.swift
//  TankTimer WatchKit Extension
//
//  Created by CHRISTOPHER STASONIS on 1/29/22.
//

import SwiftUI

struct TankSelector: View {
    @State @Binding var activeTank: TimerModel.TankSelector
    
    var body: some View {
        HStack {
            Button("L") {
                activeTank = TimerModel.TankSelector.left
            }
                .tint(activeTank == TimerModel.TankSelector.left ? .green : .white)
            Button("Off") {
                activeTank = TimerModel.TankSelector.off
            }
                .tint(activeTank == TimerModel.TankSelector.off ? .green : .white)
            Button("R") {
                activeTank = TimerModel.TankSelector.right
            }
                .tint(activeTank == TimerModel.TankSelector.right ? .green : .white)
        }
    }
}

struct TankSelector_Previews: PreviewProvider {
    
    static var previews: some View {
        var timerModel = TimerModel();
        TankSelector(activeTank: timerModel.activeTank)
    }
}
