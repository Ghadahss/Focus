//
//  focusApp.swift
//  focus
//
//  Created by Ghadah on 14/06/1444 AH.
//
//
//import SwiftUI
//
//@main
//struct focusApp: App {
//    //Mark : Since we're doing background fetching Intializing hERE
//    @StateObject var timerModel : TimerModel = .init()
//    //Mark : Scene phase
//    @Environment(\.scenePhase) var phase
//    //mark: storing last time stamp
//    @State var lastActiveTimeStamp : Date = Date()
//    var body: some Scene {
//        WindowGroup {
//           SplashScreenView()
//
//        }
//    }
//}


import SwiftUI

@main
struct focusApp: App {
    //Mark : Since we're doing background fetching Intializing hERE
    @StateObject var timerModel : TimerModel = .init()
    //Mark : Scene phase
    @Environment(\.scenePhase) var phase
    //mark: storing last time stamp
    @State var lastActiveTimeStamp : Date = Date()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(timerModel)
        }
        .onChange(of: phase){newValue in
            if timerModel.isStarted {
                if newValue == .background{
                    lastActiveTimeStamp=Date()
                }

                if newValue == .active{
                    //Mark : finding the defference
                    let  currentTimeStampDiff = Date().timeIntervalSince(lastActiveTimeStamp)
                    if timerModel.totalSecound - Int(currentTimeStampDiff)<=0{
                        timerModel.isStarted = false
                        timerModel.totalSecound = 0
                        timerModel.isFinished = true

                    }
                    else{
                        timerModel.totalSecound -= Int(currentTimeStampDiff)
                    }
                }
            }
        }
    }
}

