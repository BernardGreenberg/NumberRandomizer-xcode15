//
//  File.swift
//  NumberRandomizer
//
//  Created by Bernard Greenberg on 2/20/24.
//

import Foundation
import AppKit

/* This is not currently used in the build -- the "Window vs WindowGroup" solution, creating
a single-window App, works better for getting it to exit when the window is closed.  But including
this, and 
  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
in the App structure, really does add this AppKit cliché to the SwiftUI app, and works, too (and
allows multiple windows, fwiw.
*/

/*  See https://stackoverflow.com/questions/65743619/close-swiftui-application-when-last-window-is-closed */

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
