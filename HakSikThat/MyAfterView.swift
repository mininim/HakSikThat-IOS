//
//  MyAfterView.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/17.
//

import SwiftUI

struct MyAfterView: View {
    @State
    private var index = 0
    
    private var backgroundColors = [
        
        Color.red,
        Color.yellow,
        Color.green,
        Color.orange,
        Color.blue,
        Color.purple
    
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("마시쪙")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            Spacer()
            
        }.background(backgroundColors[index])
            .onTapGesture {
                
                index += 1
                if index > 5 {
                    index = 0
                }
            }
        
    }
}

struct MyAfterView_Previews: PreviewProvider {
    static var previews: some View {
        MyAfterView()
    }
}
