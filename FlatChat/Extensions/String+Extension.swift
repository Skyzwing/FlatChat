//
//  String+Extension.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 15/4/22.
//

import Foundation

extension String {
    
    func toDate(format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> Date? {
       let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 7)
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        
        return dateFormatter.date(from: self)
    }
}
