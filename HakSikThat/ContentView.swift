//
//  ContentView.swift
//  HakSikThat
//
//  Created by Eric Lee on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("3월 16일(목)")
            MenuView(menus: ModelData().menus[0])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
