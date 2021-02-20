//
//  Settings.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI

struct Settings: View {
    
    @State private var notif_radius = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack (){
            ZStack() {
            Text("Settings")
                .font(.system(size: 24, weight: .bold, design: .monospaced))
                .fontWeight(.medium)
                .foregroundColor(.gray)
                .padding(.all)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                Capsule()
                    .frame(width: 200, height: 50)
                    .foregroundColor(Color(red: 20.0/255 , green: 56.0/255, blue: 139.0/255))
            }
            Label("Notification Radius", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                .alignmentGuide(HorizontalAlignment.leading) { _ in 1 }
            HStack() {
                Text("0")
                Slider(
                    value: $notif_radius,
                    in: 0...100,
                    step: 5,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                ) {
                    Text("notif_radius")
                }
                Text("100")
            }
                .padding(.all)
            HStack {
                Text("\(notif_radius, specifier: "%.0f")")
                    .foregroundColor(isEditing ? .red : .blue)
                Text("miles")
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
    
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
