//
//  ContentView.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    
    var body: some View {
<<<<<<< HEAD
        Menu().preferredColorScheme(.dark)
            
=======
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
        }
>>>>>>> 4c06bad1f96fc9290db9f3e2ce7075c5ae52a5e9
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
