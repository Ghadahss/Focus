//
//  SplashScreenView.swift
//  focus
//
//  Created by Ghadah on 16/06/1444 AH.
//
//
//import SwiftUI
//
//struct SplashScreenView: View {
//    //Mark : Since we're doing background fetching Intializing hERE
//    @StateObject var timerModel : TimerModel = .init()
//    //Mark : Scene phase
//    @Environment(\.scenePhase) var phase
//    //mark: storing last time stamp
//    @State var lastActiveTimeStamp : Date = Date()
//    
//    
//    @State var isActive : Bool = false
//    @State private var size = 0.8
//    @State private var opacity = 0.5
//    
//    // Customise your SplashScreen here
//    var body: some View {
//        ZStack{
//            Color("BLUE").edgesIgnoringSafeArea(.all)
//            if isActive {
//                ContentView()
//                    .environmentObject(timerModel)
//                
//                
//            } else {
//                VStack {
//                    VStack {
//                        Image("LOGO")
//                            .resizable()
//                                       .scaledToFit()
//                            .frame(width: 350,height: 350)
//                            
//                        
////                        Text("FOCUES")
//////                            .font(Font.custom("Baskerville-Bold", size: 26))
////                          .foregroundColor(.white.opacity(0.80))
//                    }
//                    .scaleEffect(size)
//                  
//                    .onAppear {
//                        let baseAnimation = Animation.easeInOut(duration: 1)
//                                      let repeated = baseAnimation.repeatForever(autoreverses: true)
//
//                                      withAnimation(repeated) {
//                                          size = 0.7
//                                          
//                                      }
////                        withAnimation(.easeOut(duration: 1.2)) {
////                            self.size = 0.9
////                            self.opacity = 1.00
////                        }
//                    }
//                }
//                .onAppear {
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
//                        withAnimation {
//                            self.isActive = true
//                        }
//                    }
//                }
//            }
//            
//        }
//    }
//}
//
//struct SplashScreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashScreenView()
//    }
//}
