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
                        MenuView(menus: ModelData().menus[0])
                        MenuView(menus: ModelData().menus[0])
                    }
                    VStack{
                        MenuView(menus: ModelData().menus[1])
                        MenuView(menus: ModelData().menus[1])
                    }
                    VStack{
                        MenuView(menus: ModelData().menus[1])
                        MenuView(menus: ModelData().menus[0])
                    }
                    
                    
                }//Tabview
                .padding(isActivated ? 20 : 10)
                .background(isActivated ? Color.blue : Color.yellow)
                .onTapGesture {
                    print("눌렀냐?")
                    withAnimation {
                        self.isActivated.toggle()
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                
                
                NavigationLink(destination: MyAfterView()) {
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
