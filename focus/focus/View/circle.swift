//
//  circle.swift
//  focus
//
//  Created by Ghadah on 19/06/1444 AH.
//

import SwiftUI

struct circle: View {
    @State var isActive1 = false
    @State var isActive2 = false
    @State var isActive3 = false
    @State var isActive4 = false
    
    @EnvironmentObject var timerModel: TimerModel
    var body: some View {
        ZStack{
            HStack{
                if timerModel.stage1==1{
                    Circle()
                        .strokeBorder(LinearGradient(
                            gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                            startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                            endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        .frame(width: 50, height: 50)
                    
                }
                
                else{
                    ZStack {
                        Circle()
                            .strokeBorder(LinearGradient(
                                gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                    .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                    }
                    .frame(width: 50, height: 50)}
                
                
                if timerModel.stage2==2{
                    ZStack{
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 50, height: 50)
                        
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 38, height: 38)
                        .rotationEffect(.degrees(-90))
                    }}
                else{
                    ZStack {
                        ZStack{
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 50, height: 50)
                        
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 38, height: 38)
                        .rotationEffect(.degrees(-90))}}
                
                if timerModel.stage3==3{
                    ZStack {
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 50, height: 50)
                        
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 38, height: 38)
                        .rotationEffect(.degrees(-90))
                        
                        ZStack {
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 24, height: 24)
                        .rotationEffect(.degrees(-180))
                        
                    }}
                else{
                    ZStack {
                        ZStack{
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            
                                .frame(width: 50, height: 50)
                            
                            ZStack {
                                
                                Circle()
                                    .strokeBorder(LinearGradient(
                                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            }
                            .frame(width: 38, height: 38)
                            .rotationEffect(.degrees(-90))}
                        
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 24, height: 24)
                        .rotationEffect(.degrees(-180))
                        
                    }}
                
                if timerModel.stage4==4{
                    ZStack{
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 50, height: 50)
                        
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 38, height: 38)
                        .rotationEffect(.degrees(-90))
                        
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                        }
                        .frame(width: 24, height: 24)
                        .rotationEffect(.degrees(-180))
                        
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0, green: 0.4509803922, blue: 0.9019607843, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.545098066329956, green: 0.6705882549285889, blue: 0.9450980424880981, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            
                        }
                        
                        .frame(width: 14, height: 14)
                        .rotationEffect(.degrees(90))
                    }}
                else{
                    ZStack {
                        ZStack{
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            
                                .frame(width: 50, height: 50)
                            
                            ZStack {
                                
                                Circle()
                                    .strokeBorder(LinearGradient(
                                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            }
                            .frame(width: 38, height: 38)
                            .rotationEffect(.degrees(-90))}
                        
                        ZStack {
                            
                            Circle()
                                .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            
                                .frame(width: 24, height: 24)
                                .rotationEffect(.degrees(-180))
                            
                            ZStack {
                                
                                Circle()
                                    .strokeBorder(LinearGradient(
                                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3499999940395355)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.23999999463558197)), location: 1)]),
                                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 7)
                            }
                            .frame(width: 14, height: 14)
                            .rotationEffect(.degrees(90))
                        }
                    }
                    
                    
                }
                
            }
            .offset(y:200)
        }}}

struct circle_Previews: PreviewProvider {
    static var previews: some View {
        circle()
    }
}
