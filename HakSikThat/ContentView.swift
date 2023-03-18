//
//  ContentView.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated : Bool = false
    
    
    var body: some View {
        
        NavigationView {
            
            VStack{ 
                TabView {
                    
                    VStack{
                        Spacer()
                        MenuView(isActivated: $isActivated, menus: ModelData().menus[0])
                        Spacer()
                        MenuView(isActivated: $isActivated, menus: ModelData().menus[1])
                        Spacer()
                    }
                    VStack{
                        Spacer()
                        MenuView(isActivated: $isActivated, menus: ModelData().menus[0])
                        Spacer()
                        MenuView(isActivated: $isActivated, menus: ModelData().menus[0])
                        Spacer()
                    }
                    VStack{
                        Spacer()
                        MenuView(isActivated: $isActivated, menus: ModelData().menus[0])
                        Spacer()
                        MenuView(isActivated: $isActivated, menus: ModelData().menus[0])
                        Spacer()
                    }
                    
                    
                }//Tabview
                .padding(isActivated ? 100 : 10)
                .background(isActivated ? Color.blue : Color.yellow)
                .onTapGesture {
                    print("눌렀냐?")
                    withAnimation {
                        self.isActivated.toggle()
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                
                
                NavigationLink(destination: MyAfterView(isActivated: $isActivated)) {
                    Text("맛있어?")
                }
            }
        }//NavigationView
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
