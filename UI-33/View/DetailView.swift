//
//  DetailView.swift
//  UI-33
//
//  Created by にゃんにゃん丸 on 2020/11/16.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var detail : DetailViewModel
    var animation : Namespace.ID
    @State var scale : CGFloat = 1
    var body: some View {
        
        ScrollView{
            VStack{
                
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                    
                    Image(detail.selecteditem.contentimage)
                        .resizable()
                        .matchedGeometryEffect(id: detail.selecteditem.contentimage, in: animation)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                    
                    
                    HStack{
                        
                        Text(detail.selecteditem.overray)
                            .font(.caption)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                            Spacer(minLength: 0)
                        
                        Button(action: {
                           
                                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)){
                                    
                                    
                                   
                                    detail.show.toggle()
                                    
                                }
                            
                        
                            
                        }) {
                            
                            
                            Image(systemName: "xmark")
                                .foregroundColor(Color.white.opacity(0.7))
                                .padding()
                                .background(Color.white.opacity(0.7))
                                .clipShape(Circle())
                            
                        }
                        
                        
                    }
                    .padding()
                    .padding(.top,UIApplication.shared.windows.first!.safeAreaInsets.top + 10)
                    
                    
                    
                    
                    
                }
                .gesture(DragGesture(minimumDistance : 0).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                
                
                
              
                
                
                
                
                   
                    
                
                    
                HStack{
                    Image(detail.selecteditem.log)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        Text(detail.selecteditem.title)
                            .bold()
                        
                        Text(detail.selecteditem.category)
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
                .matchedGeometryEffect(id: detail.selecteditem.id, in: animation)
                
                
                Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                    
                    
                    
                
                
                Spacer()
                
                
                Button(action: {}) {
                    Label(title:{
                        
                        Text("Share")
                            .foregroundColor(.primary)
                        
                    }){
                        
                      Image(systemName: "square.and.arrow.up.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                        
                        
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal,30)
                    .background(Color.primary.opacity(0.3))
                    .cornerRadius(10)
                }
                .padding()
                
            }
            
        }
        
       
            
            
        .scaleEffect(scale)
        .ignoresSafeArea(.all,edges: .top)
    }
    
    
    func onChanged(value:DragGesture.Value){
        
        let scale = value.translation.height / UIScreen.main.bounds.height
        
        
        if 1 - scale > 0.7{
            
            
            self.scale = 1 - scale
        }
        
        
          
        
        
    }
    
    
    func onEnded(value:DragGesture.Value){
        withAnimation(.spring()){
            
            if scale < 0.9{
                
                detail.show.toggle()
                
            }
            scale = 1
            
            
           
            
        }
        
        
        
    }
}

