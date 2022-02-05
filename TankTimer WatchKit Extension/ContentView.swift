//
//  ContentView.swift
//  TankTimer WatchKit Extension
//
//  Created by CHRISTOPHER STASONIS on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var timerModel: TimerModel
    
    var body: some View {
        VStack() {
            HStack {
                TimerView(
                    timerModel: timerModel,
                    tank: TimerModel.TankSelector.left
                )
                
                Divider()
                
                TimerView(
                    timerModel: timerModel,
                    tank: TimerModel.TankSelector.right
                )
            }
            
            Group {
                TankSelector(activeTank: $timerModel.activeTank)
            }
            .frame(width: 175)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 5.0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(timerModel: TimerModel())
    }
}
