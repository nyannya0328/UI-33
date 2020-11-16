//
//  TabBar.swift
//  UI-33
//
//  Created by にゃんにゃん丸 on 2020/11/16.
//

import SwiftUI

struct TabBar: View {
    @Namespace var animation
    @StateObject var detailobject  = DetailViewModel()
    
    var body: some View {
        ZStack{
            TabView{
                
                Today(animation: animation)
                    .environmentObject(detailobject)
                    .tabItem {
                        Image("t1")
                            .renderingMode(.template)
                          
                        
                        Text("today")
                            
                        
                    }
                
                Text("Today")
                    .tabItem {
                        Image("t2")
                            .renderingMode(.template)
                          
                        
                        Text("today")
                            
                        
                    }
                
                Text("APPS")
                    .tabItem {
                       Image(systemName: "applelogo")
                        .renderingMode(.template)
                          
                        
                        Text("today")
                            
                        
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .renderingMode(.template)
                          
                        
                        Text("Seach")
                            
                        
                    }
                
                
                
                
                
                
                
            }
            .opacity(detailobject.show ? 0 : 1)
            if detailobject.show{
                
                DetailView(detail: detailobject, animation: animation)
                
            }
        }
    }
}

