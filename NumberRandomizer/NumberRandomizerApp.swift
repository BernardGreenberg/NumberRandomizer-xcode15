//
//  NumberRandomizerApp.swift
//  NumberRandomizer
//
//  Created by Le Huang on 1/19/24.
//

import SwiftUI

@main
struct NumberRandomizerApp: App {
    var body: some Scene {
        Window("SingleWindow", id: "main") {
            ContentView()
        }
        /* https://forums.developer.apple.com/forums/thread/667362 */
        .commands {
                        CommandGroup(replacing: .help) {
                                Button(action: {print("clicked on MyApp Help menu")}) {
                                        Text("MyApp Help")
                                }
                        }
                        CommandMenu("Edit") {
                            Button(action: {print("clicked on MyApp Edit menu")}) {
                                    Text("edit menu item")
                            }
                        }
                }
    }
}



