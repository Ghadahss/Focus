//
//  ContentView.swift
//  focus
//
//  Created by Ghadah on 14/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var timerModel:TimerModel
    var body: some View {
            Home()
            .environmentObject(timerModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

