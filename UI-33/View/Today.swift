//
//  Today.swift
//  UI-33
//
//  Created by にゃんにゃん丸 on 2020/11/16.
//

import SwiftUI

struct Today: View {
    var animation : Namespace.ID
    @EnvironmentObject var detail :DetailViewModel
    var body: some View {
        ScrollView{
            
            VStack{
                
                
                HStack(alignment: .bottom){
                    
                    VStack(spacing:5){
                    
                    Text("Monday 16 November")
                        .foregroundColor(.gray)
                    
                    Text("Today")
                        .font(.largeTitle)
                        .bold()
                    
                    }
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        
                        Image(systemName: "person.circle.fill")
                            .font(.largeTitle)
                        
                    }
                    
                    
                    
                }
                .padding()
                
                ForEach(items){item in
                    
                    CardView(item: item,animation: animation)
                    
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)){
                                
                                
                                detail.selecteditem = item
                                detail.show.toggle()
                                
                            }
                        }
                    
                    
                    
                    
                    
                }
                    
                    
                    
            
            }
            .padding(.bottom)
            
            
        }
        .background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}


