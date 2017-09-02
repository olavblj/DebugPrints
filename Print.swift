//
//  Print.swift
//  DebugPrints
//
//  Created by Olav Bakke Ljosland on 02/09/2017.
//
//

import Foundation


public enum Print: String {
    case normal = "▪️"
    case success = "✅"
    case warning = "⚠️"
    case failure = "❌"
    case point = "⛳️"
    case info = "📙"
    case progress = "🚙"
    case object = "🎾"
    case collected = "🔵"
    
    public func print(_ items: Any...) {
        let separator = "➡️"
        let margin = "⬜️"
        
        if items.count == 1 {
            printOneLine(items[0])
        } else {
            Swift.print("\n")
            printObject("🔵 -- Collection", margin: margin)
            for item in items {
                printObject(separator, margin: margin)
                printObject(item, margin: margin)
            }
            printObject("🔴 -- Collection", margin: margin)
            Swift.print("\n")
        }
    }
    
    private func printObject(_ item: Any, margin: String = "") {
        Swift.print(margin + String(describing: item))
    }
    
    private func printOneLine(_ item: Any) {
        let output = self.rawValue + " -- " + String(describing: item)
        Swift.print(output)
    }
}

public func print(_ type: Print = .normal, _ items: Any) {
    type.print(items)
}

