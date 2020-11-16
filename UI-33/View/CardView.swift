//
//  CardView.swift
//  UI-33
//
//  Created by にゃんにゃん丸 on 2020/11/16.
//

import SwiftUI

struct CardView: View {
    
    var item : Todayitem
    @Environment(\.colorScheme) var color
    var animation : Namespace.ID
    var body: some View {
        VStack{
            
            
            Image(item.contentimage)
                .resizable()
                .matchedGeometryEffect(id: item.contentimage, in: animation)
                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
            
            HStack{
                Image(item.log)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text(item.title)
                        .bold()
                    
                    Text(item.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                }
                
                Spacer()
                
                
                VStack{
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        
                        
                        Text("Get")
                            .bold()
                            .padding(.vertical,10)
                            .padding(.horizontal,25)
                            .background(Color.primary.opacity(0.05))
                        
                        
                        
                    }
                    
                    Text("App Purchase")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                
                
                
                
            }
            .padding()
            .matchedGeometryEffect(id: item.id, in: animation)
            
            
            
            
            
        }
        .background(color == .dark ? Color.black : Color.white)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.top)
        
        
        
    }
}
