//
//  busApp.swift
//  bus
//
//  Created by Lucien Luc on 2/19/21.
//

import SwiftUI
import GoogleMaps
import GooglePlaces

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyB2Et4BCEUILyxCTPd6sXZixlz7RjXkT70")
        GMSPlacesClient.provideAPIKey("AIzaSyB2Et4BCEUILyxCTPd6sXZixlz7RjXkT70")
        return true
    }
}

@main
struct busApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

