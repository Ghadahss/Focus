//
//  TimerModel.swift
//  focus
//
//  Created by Ghadah on 14/06/1444 AH.
//
//






import SwiftUI

class TimerModel: NSObject,ObservableObject , UNUserNotificationCenterDelegate {
 //Mark : timer Properites
    @Published var progress: CGFloat = 1
    @Published var timerStringValue:String = "00:00"
    @Published var isStarted:Bool = false
    @Published var AddNewTimer:Bool = false

    @Published var hour : Int = 0
    @Published var minutes : Int = 0
    @Published var seconds : Int = 0

    //Mark : Total secound
    @Published var totalSecound : Int = 0
    @Published var staticTotalSeconds : Int = 0
    @Published var isFinished:Bool = false

//    @Published var string = NSLocalizedString("n", comment: "")
//    @Published var n : CGFloat=0
//
    
    //Mark : same for break
    @Published var progressb: CGFloat = 1
    @Published var timerStringValueb:String = "00:00"
    @Published var isStartedb:Bool = false
    @Published var AddNewTimerb:Bool = false

    @Published var hourb : Int = 0
    @Published var minutesb : Int = 0
    @Published var secondsb : Int = 0
    
    @Published var minutesa : Int = 0
    @Published var secondsa : Int = 0

    //Mark : Total secound
    @Published var totalSecoundb : Int = 0
    @Published var staticTotalSecondsb : Int = 0
    @Published var isFinishedb:Bool = false
    
   
    var Study = NSLocalizedString("Study", comment: "")
    var Break = NSLocalizedString("Break", comment: "")
    var clickBreak = NSLocalizedString("click to start your break", comment: "")
    var clickStudy = NSLocalizedString("click to start study", comment: "")
    var notifi = NSLocalizedString("Now it's time to focus 📖 ! ", comment: "")
    var notifi1 = NSLocalizedString("Congrats You completed ", comment: "")
    var notifi2 = NSLocalizedString(" sec in study 🤩", comment: "")
    @Published var studyText:String = ""
    @Published var braekText:String = "Break time"
    @Published var clickS:String = ""
    @Published var clickB:String = ""
    
    
    //Mark: stages and color
    @Published var blue:String = "bluecolor"
    @Published var count:Int = 0
    @Published var count2:Int = 0
    @Published var count2Check:Bool = false
    @Published var stage1:Int = 0
    @Published var stage2:Int = 0
    @Published var stage3:Int = 0
    @Published var stage4:Int = 0
    
    
    
    
    
    

    // since its Nobject
    override init() {
        super.init()
        self.authorizeNotification()
    }
    //Mark : requsting notifiction access
    func authorizeNotification(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.sound,.alert,.badge]){_,_ in

        }
        // Mark : to show in app notifcation
        UNUserNotificationCenter.current().delegate = self
    }

    func userNotificationCenter(_ center : UNUserNotificationCenter , willpresent notification : UNNotification , withCompletionHandler completionHandler :@escaping (UNNotificationPresentationOptions)->Void){
        completionHandler([.sound,.banner])
    }

    func startTimer(){
        withAnimation(.easeIn(duration: 0.25)){isStarted=true}
       
            if  minutes==0 && seconds==0{
                isStarted=isStartedb
                minutes=minutesb
                seconds=secondsb
                studyText=Break
                blue="orange"
                clickS=clickB
                count=1
             
              
                
            }else {
                minutesa=minutes
                 secondsa=seconds
               
                studyText=Study
                blue="bluecolor"
                count=0
               
            }
//        if string=="1"{
//            n=0
//        }else{n=0}
//
//                        else if minutesb>6 && secondsb>6{
//                 
//                        startTimer()
//                    }
     
        
         //Mark : setting string time value
         timerStringValue = "\(hour == 0 ?"":"\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes):")\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"
         //Mark : calculating total secounds for timer anmation
        totalSecound = (hour*3600) + (minutes*60) + seconds
         staticTotalSeconds = totalSecound
         AddNewTimer = false
    }
    //Mark : stopping timer
    func stopTimer(){
        withAnimation{
            isStarted=false
            hour=hour
            minutes=minutes
            seconds=seconds
            progress = 1
         
        }
        totalSecound = totalSecound
        staticTotalSeconds = totalSecound
        timerStringValue = "\(hour == 0 ?"":"\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes):")\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"
    }

    //Mark : Updateing timer
    func updateTimer(){
     
        totalSecound -= 1
        progress = CGFloat(totalSecound) / CGFloat(staticTotalSeconds)
        progress = (progress<0 ? 0 : progress)
        //60 Minute *60 seconds
        hour = totalSecound / 3600
        minutes = (totalSecound / 60 ) % 60
        seconds = (totalSecound % 60)
        timerStringValue = "\(hour == 0 ?"":"\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes):")\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"

        if hour==0 && minutes==0 && seconds==0 {
            if count==0{
                studyText=Break
                blue="orange"
               
                clickS=clickBreak
                isStarted = false
                print("f")
                print(count)
                print(secondsa)
                print(seconds)
                isFinished = true
                isStartedb=true
                progress=1
                //            isFinishedb = false
                //            startTimerb()
                addNotification()
                
            }else{
                clickS=clickStudy
                isStarted = false
                isFinished = true
                isStartedb=true
                progress=1
                print("fb")
                //            isFinishedb = true
                //            isStarted=true
                studyText=Study
                blue="bluecolor"
                //            isFinishedb = false
                //            startTimerb()
                addNotificationb()
                
                count2+=1
        
                if count2>0{
                    if count2==1{
                        stage1=1
                    }
                    if count2==2{
                        stage2=2
                    }
                    if count2==3{
                        stage3=3
                    }
                    if count2==4{
                        stage4=4
                        count2Check=true
                    }}
                  
                 
                print(stage1)
                print(stage2)
                print(stage3)
                print(stage4)
                print(count2)
                
                
            }}
    }

    
    func restart(){
        if count==1{
         minutes=minutesa
        seconds=secondsa
            
            if count2==5{
                 count2=0
                stage1=0
                stage2=0
                stage3=0
                stage4=0
            
               
             }
      startTimer()
//            isStartedb=false
//            isStarted=false
//            isFinished=true
//            isFinishedb=true
            
        }else {
            count=0
            minutes=0
            seconds=0
            braekText=studyText
            studyText=Study
            braekText="Break time"
//            blue=Color.blue
//            orange=Color.pink
        }
    }
    
    
  


    func addNotification(){
        let content = UNMutableNotificationContent()
        content.title = "Focus"
        content.subtitle = "\(notifi1)\(secondsa)\(notifi2)"
        content.sound = UNNotificationSound.default

        let requst = UNNotificationRequest(identifier: UUID().uuidString, content: content , trigger:UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(staticTotalSeconds), repeats: false))

        UNUserNotificationCenter.current().add(requst)
    }
    
    func addNotificationb(){
        let content = UNMutableNotificationContent()
        content.title = "Focus"
        content.subtitle = notifi
        content.sound = UNNotificationSound.default

        let requst = UNNotificationRequest(identifier: UUID().uuidString, content: content , trigger:UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(staticTotalSeconds), repeats: false))

        UNUserNotificationCenter.current().add(requst)
    }
}







