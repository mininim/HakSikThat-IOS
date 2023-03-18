//
//  MyAfterView.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/17.
//

import SwiftUI

struct MyAfterView: View {
    @Binding var isActivated : Bool
    
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    
    @State private var index = 0
    
    
    
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
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
            Text("활성화 상태 : \(String(isActivated ))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
            Spacer()
            
        }.background(backgroundColors[index])
            .onTapGesture {
                
                
                if (self.index == self.backgroundColors.count - 1) {
                    self.index = 0
                }else{
                    self.index += 1
                }
            }
        
    }
}

struct MyAfterView_Previews: PreviewProvider {
    static var previews: some View {
        MyAfterView()
    }
}
