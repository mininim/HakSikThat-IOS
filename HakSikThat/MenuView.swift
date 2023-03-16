//
//  MenuView.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/16.
//

import SwiftUI

struct MenuView: View {
    var menus : Menu
    
    var body: some View {
        Text(menus.foods)
    }
}

struct MenuViewView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menus: ModelData().menus[1])
    }
}
