//
//  File.swift
//  NumberRandomizer
//
//  Created by Bernard Greenberg on 2/20/24.
//

import Foundation
import AppKit

/* https://stackoverflow.com/questions/65743619/close-swiftui-application-when-last-window-is-closed */

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
