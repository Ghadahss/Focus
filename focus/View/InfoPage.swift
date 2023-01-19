//
//  InfoPage.swift
//  focus
//
//  Created by Ghadah on 19/06/1444 AH.
//

import SwiftUI

struct InfoPage: View {
    let tips: LocalizedStringKey = "tips"
    let text1: LocalizedStringKey = "text1"
    let text2: LocalizedStringKey = "text2"
    let text3: LocalizedStringKey = "text3"
    let text4: LocalizedStringKey = "text4"
    let text5: LocalizedStringKey = "text5"
    let text6: LocalizedStringKey = "text6"
    let text7: LocalizedStringKey = "text7"
    var body: some View {
        ZStack {
            Color("BLUE").edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack{
                    Text(tips)
                        .padding()
                        .fontWeight(.heavy)
                        .font(.system(size: 24))
                }
                VStack{
                    Text(text1)
                        .padding(0.2)
                        .frame(width: 320 , alignment: .leading)
                    Text(text2)
                        .padding(0.2)
                        .frame(width: 320 , alignment: .leading)
                    Text(text3)
                        .padding(0.2)
                        .frame(width: 320 , alignment: .leading)
                    Text(text4)
                        .padding(0.2)
                        .frame(width: 320 , alignment: .leading)
                    Text(text5)
                        .frame(width: 320 , alignment: .leading)
                }
                //.padding(.horizontal,20)
                    .fontWeight(.semibold)
                
                
                HStack {
                    progressCircleColored()
                }
                VStack{
                    Text(text6)
                        .frame(width: 320)
                        .padding()
                    Text(text7)
                        .frame(width: 320)
                }.fontWeight(.semibold)
            }.preferredColorScheme(.dark)
                .padding(.top,-150)
              
        }
    }
    
    struct InfoPage_Previews: PreviewProvider {
        static var previews: some View {
            InfoPage()
        }
    }
}

