//
//  Date+Entension.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 15/4/22.
//

import Foundation

extension Date {
    func descriptiveString(dateStyle style: String = "dd/MM/yyyy") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = style
        let daysBetween = daysBetween(date: Date())
        
        switch daysBetween {
        case .zero:
            return "Today"
        case 1:
            return "Yesterday"
        case 2..<5:
            let weekdayIndex = Calendar.current.component(.weekday, from: self) - 1
            return formatter.weekdaySymbols[weekdayIndex]
        default:
            return formatter.string(from: self)
        }
        
    }
    
    func daysBetween(date: Date) -> Int {
        let calendar = Calendar.current
        let currentDate = calendar.startOfDay(for: date)
        let receiveDate = calendar.startOfDay(for: self)
        
        if let daysBetween = calendar.dateComponents([.day], from: receiveDate, to: currentDate).day {
            return daysBetween
        }
        return .zero
        
    }
}
