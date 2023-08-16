//
//  ContentView.swift
//  Mapkit
//
//  Created by 김휘선 on 2023/08/16.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SearchView()
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
