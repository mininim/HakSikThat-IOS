//
//  MenuView.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/16.
//

import SwiftUI

struct MenuView: View {
    @Binding var isActivated : Bool
    
    var menus : Menu
    
    init(isActivated: Binding<Bool> = .constant(true), menus : Menu) {
        _isActivated = isActivated
        self.menus = menus
    }
    
    
    
    var body: some View {
        VStack{
            
            Text(menus.foods)
                .fontWeight(.bold)
                .font(.system(size: 15))
            Text(menus.location)
                .fontWeight(.bold)
                .font(.system(size: 15))
            Text("\(menus.cost) 원")
                .fontWeight(.bold)
                .font(.system(size: 15))
            Text("\(menus.kcal) Kcal")
                .fontWeight(.bold)
                .font(.system(size: 15))
            
        }
        .background(isActivated ? Color.gray : Color.white)
        
    }
}

struct MenuViewView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menus: ModelData().menus[0])
    }
}
