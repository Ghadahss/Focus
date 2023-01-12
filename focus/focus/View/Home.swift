//
//  Home.swift
//  focus
//
//  Created by Ghadah on 14/06/1444 AH.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var timerModel: TimerModel
    let sec = NSLocalizedString("sec", comment: "")
    let min = NSLocalizedString("min", comment: "")
    let s = NSLocalizedString("How much you want to study ?", comment: "")
    let b = NSLocalizedString("How much you want the break ?", comment: "")
    let start = NSLocalizedString("Start", comment: "")
    let n : Int=0
//    let languageCode = Locale.current.language.languageCode.identifier
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Button{
                            if timerModel.isStarted{
                                timerModel.stopTimer()
                                //Mark : cancelling all notificatins
                                UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
                            }
                            else{
                                timerModel.AddNewTimer=true
                            }}label: {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                    .font(.largeTitle.bold())
                                    .foregroundColor(.white)
                                
                                Text("New Timer")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                //                            .background{
                                //                                Circle()
                                //                                    .fill(Color.blue)
                                //                            }
                                    .shadow(color:Color.blue,radius: 8,x:0,y:0)
                            }.padding(.horizontal,20)
                        Spacer()
                        Button(action: {}) {
                            NavigationLink ( destination: InfoPage()){
                                Image(systemName: "info.circle.fill")
                                    .font(.title2.bold())
                                    .foregroundColor(.white)
                                //                    .shadow(color:Color.blue,radius: 8,x:0,y:0)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    
                }
                Text(timerModel.studyText)
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.vertical,-40)
                    .offset(y:80)
                
                
                
                
                
                GeometryReader{proxy in
                    
                    VStack(spacing: 15){
                        
                        ZStack{
                            Circle()
                                .fill(.white.opacity(0.03))
                                .padding(-40)
                            //                        Circle()
                            //                            .trim(from: 0,to: timerModel.progress)
                            //                            .stroke(.white.opacity(0.03),lineWidth: 80)
                            //MARK : Shadow
                            Circle()
                            
                                .stroke(Color(timerModel.blue),lineWidth: 5)
                                .blur(radius: 15)
                                .padding(-2)
                            
                            Circle()
                                .fill(Color("BLUE"))
                            
                            
                            //mark: fliped in loclization
                            
                            
                            Circle()
                                .trim(from: 0 , to: timerModel.progress)
                                .stroke(Color(timerModel.blue).opacity(0.7),style :StrokeStyle( lineWidth: 30,lineCap: .round))
                            
                            
                            
                            //Mark: since view is rotated that's why using X
                            
                            //                            .rotationEffect(.init(degrees: timerModel.progress * -360))
                            
                            
                            
                            
                            //MARK : knob
                            GeometryReader{proxy in
                                let size = proxy.size
                                //
                                //                            Circle()
                                //                                .fill(Color(timerModel.blue))
                                //                                .frame(width: 30,height: 30)
                                //                                .overlay(content: {
                                //                                    Circle()
                                //                                        .fill(.white)
                                //                                        .padding(5)
                                //
                                //                                })
                                //                                .frame(width: size.width,height: size.height
                                //                                       ,alignment: .center)
                                //                            //Mark: since view is rotated that's why using X
                                //                                .offset(x: size.height / 3.8)
                                //                                .rotationEffect(.init(degrees: timerModel.progress * 360))
                            }
                            
                            Text(timerModel.timerStringValue)
                                .font(.system(size: 40 , weight: .light))
                                .rotationEffect(.init(degrees: 90))
                            
                        }.padding(60)
                            .frame(width: proxy.size.width)
                            .rotationEffect(.init(degrees: -90))
                            .animation(.none, value: timerModel.progress)
                        //                    //                        .frame(maxWidth: .infinity , maxHeight: .infinity , alignment: .center)
                        Text(timerModel.clickS)
                            .padding(.vertical,-30)
                        HStack{
                            
                            
                            
                            Button{
                                if timerModel.isStarted{
                                    timerModel.stopTimer()
                                    
                                    //Mark : cancelling all notificatins
                                    UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
                                }
                                else {
                                    //                                //                            timerModel.AddNewTimer=true
                                    if timerModel.minutes==0 && timerModel.minutesb==0 && timerModel.seconds==0 && timerModel.secondsb==0{
                                        timerModel.AddNewTimer = true
                                    }
                                    else  if timerModel.count==0{
                                        
                                        timerModel.startTimer()
                                        if timerModel.count2==5{
                                            timerModel.stage1=0
                                            timerModel.stage2=0
                                            timerModel.stage3=0
                                            timerModel.stage4=0
                                            timerModel.count2=0
                                            
                                        }
                                        //                                    timerModel.blue=Color.orange
                                        //                                    timerModel.studyText="Study time"
                                    }  else{timerModel.restart()
                                        
                                        
                                        //                                    timerModel.braekText="Break time"
                                        //                                    timerModel.blue=Color.blue
                                    }
                                    //
                                    //                                // i did this becouse ;كان يعطيني سالب لازم اساوي القيم باخر قيمه
                                    //                                if timerModel.timerStringValueb=="00:00"{timerModel.stopTimer()
                                    //
                                    //                                }else{timerModel.startTimer()
                                    //                                    timerModel.progress=timerModel.progress
                                    //                                    timerModel.totalSecound=timerModel.totalSecound
                                    //                                    timerModel.isStarted=true
                                    //                                    timerModel.staticTotalSeconds=timerModel.staticTotalSeconds
                                    //                                    timerModel.timerStringValue=timerModel.timerStringValue}
                                }
                            }label: {
                                Image(systemName: !timerModel.isStarted ? "play.fill" : "stop.fill")
                                    .font(.largeTitle.bold())
                                    .foregroundColor(.white)
                                    .frame(width: 80,height: 80)
                                    .background{
                                        Circle()
                                            .fill(Color.blue)
                                    }
                                    .shadow(color:Color.blue,radius: 8,x:0,y:0)
                            }
                            //                        Button{timerModel.startTimerb()
                            //
                            //                          timerModel.updateTimerb()
                            //                            timerModel.progress=timerModel.progressb
                            //                            timerModel.totalSecound=timerModel.totalSecoundb
                            //                            timerModel.isStarted=timerModel.isStartedb
                            //                            timerModel.staticTotalSeconds=timerModel.staticTotalSecondsb
                            //                            timerModel.timerStringValue=timerModel.timerStringValueb}label: {
                            //                                Text("Break")
                            //                            }
                        }
                        //                    .padding(.trailing,-44)
                        
                    }
                    //                .onTapGesture(perform: {
                    //                    timerModel.progress = 0.5
                    //                })
                    .frame(maxWidth: .infinity , maxHeight: .infinity , alignment: .center)
                }
            }
            .padding()
            .background{
                Color("BLUE").ignoresSafeArea()
            }
            .overlay(content: {
                ZStack{
                    Color.black.opacity(timerModel.AddNewTimer ? 0.25 : 0)
                        .onTapGesture {
                            timerModel.hour=0
                            timerModel.minutes=0
                            timerModel.seconds=0
                            timerModel.hourb=0
                            timerModel.minutesb=0
                            timerModel.secondsb=0
                            timerModel.AddNewTimer = false
                            timerModel.AddNewTimerb = false
                        }
                    circle()
                    
                    NewTimerView()
                        .frame(maxHeight: .infinity , alignment: .bottom)
                        .offset(y:timerModel.AddNewTimer ? 0 : 400)
                }.animation(.easeIn, value: timerModel.AddNewTimer)
            })
            
            .preferredColorScheme(.dark)
            .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()){
                _ in
                if timerModel.isStarted{
                    timerModel.updateTimer()
                }
                //            else{
                //                timerModel.startTimerb()
                //            }
            }
            .alert("Congrats you finished the 4 stages ", isPresented: $timerModel.count2Check){
                Button("start again",role: .cancel){
                    timerModel.stopTimer()
                    timerModel.count2=0
                    timerModel.stage1=0
                    timerModel.stage2=0
                    timerModel.stage3=0
                    timerModel.stage4=0
                    //                timerModel.startTimer()
                    
                }
                
                Button("New Timer" , role: .destructive){
                    
                    timerModel.stopTimer()
                    timerModel.AddNewTimer = true
                }
                //
            }
            
        }
        
    }
    
    
    
    
    
    
    
    
    //Mark : new timer bottom sheet
    @ViewBuilder
    func NewTimerView()->some View{
    
 
        VStack{
            Text(s)
                .font(.title2.bold())
                .foregroundColor(.white)
                .padding(.top,10)
            
            HStack{

                
                Text("\(timerModel.minutes) "+min)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.3))
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .background{
                        Capsule()
                            .fill(Color.white.opacity(0.07))
                    }
                    .contextMenu{
                        MenuOptions(maxValue: 60, hint: min){value in timerModel.minutes = value
                        }
                        
                    }
                
                
                
                
                Text("\(timerModel.seconds) "+sec)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.3))
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .background{
                        Capsule()
                            .fill(Color.white.opacity(0.07))
                    }.contextMenu{
                        MenuOptions(maxValue: 60, hint: sec){value in timerModel.seconds = value
                           
                        }
                        
                    }
             
                
            }
            Text(b)
                .font(.title2.bold())
                .foregroundColor(.white)
                .padding(.top,30)
            
            HStack{

                
                Text("\(timerModel.minutesb) "+min)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.3))
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .background{
                        Capsule()
                            .fill(Color.white.opacity(0.07))
                    }
                    .contextMenu{
                        MenuOptions(maxValue: 25, hint: min){value in timerModel.minutesb = value
                        }
                    }
                
                
                
                
                Text("\(timerModel.secondsb) "+sec)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.3))
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .background{
                        Capsule()
                            .fill(Color.white.opacity(0.07))
                    }.contextMenu{
                        MenuOptions(maxValue: 60, hint: sec){value in timerModel.secondsb = value
                        }
                    }
                
            }.padding(.bottom,20)
            
            
            Button{timerModel.startTimer()
//                timerModel.progress=timerModel.progress
//                timerModel.totalSecound=timerModel.totalSecound
//                timerModel.isStarted=true
//                timerModel.staticTotalSeconds=timerModel.staticTotalSeconds
//                timerModel.timerStringValue=timerModel.timerStringValue
            }label: {//i have to make it see break func
                Text(start)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .padding(.horizontal,100)
                    .background{
                        Capsule()
                            .fill(Color.blue)
                    }
            }
            .disabled(timerModel.seconds == 0)
          
            .opacity(timerModel.seconds==0 ? 0.5 : 1)
            .opacity(timerModel.secondsb==0 ? 0.5 : 1)
            .padding(.top)
            

            
        }.padding()
            .frame(maxWidth: .infinity)
            .background{
                RoundedRectangle(cornerRadius: 10,style: .continuous)
                    .fill(Color("BLUE"))
                    .ignoresSafeArea()
            }
    }
    //Mark: reusble context menu option
    func MenuOptions(maxValue: Int, hint:String,onClick:@escaping(Int)->())->some View{
        ForEach(0...maxValue , id: \.self){value in
            Button("\(value) \(hint)"){
                onClick(value)
            }
        }
    }
}
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(TimerModel())
                
        }
    }
    













//
//
//import SwiftUI
//
//struct Home: View {
//    @EnvironmentObject var timerModel: TimerModel
//    var body: some View {
//        VStack{
//            Text("focus")
//                .font(.title2.bold())
//                .foregroundColor(.white)
//
//            GeometryReader{proxy in
//                VStack(spacing: 15){
//                    ZStack{
//                        Circle()
//                            .fill(.white.opacity(0.03))
//                            .padding(-40)
//                        Circle()
//                            .trim(from: 0,to: timerModel.progress)
//                            .stroke(.white.opacity(0.03),lineWidth: 80)
//                        //MARK : Shadow
//                        Circle()
//
//                            .stroke(Color.blue,lineWidth: 5)
//                            .blur(radius: 15)
//                            .padding(-2)
//
//                        Circle()
//                            .fill(Color("BLUE"))
//                        Circle()
//                            .trim(from: 0 , to: timerModel.progress)
//                            .stroke(Color.blue.opacity(0.7),lineWidth: 10)
//
//                        //MARK : knob
//                        GeometryReader{proxy in
//                            let size = proxy.size
//
//                            Circle()
//                                .fill(Color.blue)
//                                .frame(width: 30,height: 30)
//                                .overlay(content: {
//                                    Circle()
//                                        .fill(.white)
//                                        .padding(5)
//
//                                })
//                                .frame(width: size.width,height: size.height
//                                       ,alignment: .center)
//                            //Mark: since view is rotated that's why using X
//                                .offset(x: size.height / 4)
//                                .rotationEffect(.init(degrees: timerModel.progress * 360))
//                        }
//
//                        Text(timerModel.timerStringValue)
//                            .font(.system(size: 45 , weight: .light))
//                            .rotationEffect(.init(degrees: 90))
//
//                    }.padding(60)
//                        .frame(width: proxy.size.width)
//                        .rotationEffect(.init(degrees: -90))
//                        .animation(.none, value: timerModel.progress)
////                        .frame(maxWidth: .infinity , maxHeight: .infinity , alignment: .center)
//
//                    Button{
//                        if timerModel.isStarted{
//                            timerModel.stopTimer()
//                            //Mark : cancelling all notificatins
//                            UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
//                        }
//                        else{
//                            timerModel.AddNewTimer=true
//                        }
//                    }label: {
//                        Image(systemName: !timerModel.isStarted ? "timer" : "stop.fill")
//                            .font(.largeTitle.bold())
//                            .foregroundColor(.white)
//                            .frame(width: 80,height: 80)
//                            .background{
//                                Circle()
//                                    .fill(Color.blue)
//                            }
//                            .shadow(color:Color.blue,radius: 8,x:0,y:0)
//                    }
//                }
////                .onTapGesture(perform: {
////                    timerModel.progress = 0.5
////                })
//                .frame(maxWidth: .infinity , maxHeight: .infinity , alignment: .center)
//            }
//        }
//        .padding()
//        .background{
//            Color("BLUE").ignoresSafeArea()
//        }
//        .overlay(content: {
//            ZStack{
//                Color.black.opacity(timerModel.AddNewTimer ? 0.25 : 0)
//                    .onTapGesture {
//                        timerModel.hour=0
//                        timerModel.minutes=0
//                        timerModel.seconds=0
//                        timerModel.AddNewTimer = false
//                    }
//
//                NewTimerView()
//                    .frame(maxHeight: .infinity , alignment: .bottom)
//                    .offset(y:timerModel.AddNewTimer ? 0 : 400)
//            }.animation(.easeIn, value: timerModel.AddNewTimer)
//        })
//
//        .preferredColorScheme(.dark)
//        .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()){
//            _ in
//            if timerModel.isStarted{
//                timerModel.updateTimer()
//            }
//        }
//        .alert("congrats you did it", isPresented: $timerModel.isFinished){
//            Button("Start New" , role: .cancel){
//                timerModel.stopTimer()
//                timerModel.AddNewTimer = true
//            }
//            Button("Close",role: .destructive){timerModel.stopTimer()}
//
//        }
//
//
//
//    }
//    //Mark : new timer bottom sheet
//    @ViewBuilder
//    func NewTimerView()->some View{
//        VStack{
//            Text("Add New Timer :")
//                .font(.title2.bold())
//                .foregroundColor(.white)
//                .padding(.top,10)
//
//            HStack{
//                Text("\(timerModel.hour) hr")
//                    .font(.title3)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white.opacity(0.3))
//                    .padding(.horizontal,20)
//                    .padding(.vertical,12)
//                    .background{
//                        Capsule()
//                            .fill(Color.white.opacity(0.07))
//                    }.contextMenu{
//                        MenuOptions(maxValue: 12, hint: "hr"){value in timerModel.hour = value
//                        }
//                    }
//
//
//
//                Text("\(timerModel.minutes) min")
//                    .font(.title3)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white.opacity(0.3))
//                    .padding(.horizontal,20)
//                    .padding(.vertical,12)
//                    .background{
//                        Capsule()
//                            .fill(Color.white.opacity(0.07))
//                    }
//                    .contextMenu{
//                        MenuOptions(maxValue: 60, hint: "min"){value in timerModel.minutes = value
//                        }
//                    }
//
//
//
//
//                Text("\(timerModel.seconds) sec")
//                    .font(.title3)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white.opacity(0.3))
//                    .padding(.horizontal,20)
//                    .padding(.vertical,12)
//                    .background{
//                        Capsule()
//                            .fill(Color.white.opacity(0.07))
//                    }.contextMenu{
//                        MenuOptions(maxValue: 60, hint: "sec"){value in timerModel.seconds = value
//                        }
//                    }
//
//            }.padding(.top,20)
//
//            Button{timerModel.startTimer()}label: {
//                Text("save")
//                    .font(.title3)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding(.vertical)
//                    .padding(.horizontal,100)
//                    .background{
//                        Capsule()
//                            .fill(Color.blue)
//                    }
//            }
//            .disabled(timerModel.seconds == 0)
//            .opacity(timerModel.seconds==0 ? 0.5 : 1)
//            .padding(.top)
//
//
//
//
//        }.padding()
//            .frame(maxWidth: .infinity)
//            .background{
//                RoundedRectangle(cornerRadius: 10,style: .continuous)
//                    .fill(Color("BLUE"))
//                    .ignoresSafeArea()
//            }
//    }
//    //Mark: reusble context menu option
//    func MenuOptions(maxValue: Int, hint:String,onClick:@escaping(Int)->())->some View{
//        ForEach(0...maxValue , id: \.self){value in
//            Button("\(value) \(hint)"){
//                onClick(value)
//            }
//        }
//    }
//}
//    struct Home_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//                .environmentObject(TimerModel())
//        }
//    }
//
//
