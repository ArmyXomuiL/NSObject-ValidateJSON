//
//  NSObject+ValidateJSON.swift
//
//  Created by ArmyXomuiL on 08.05.16.
//  Copyright © 2016 Pirro. All rights reserved.
//

import Foundation

extension NSObject {

    func nullToNil() -> AnyObject? {
        return self.isKindOfClass(NSNull) ? nil : self
    }
    
    func checkForNull() -> AnyObject? {
        return self.nullToNil() == nil ? nil : self
    }
    
    func checkForNullAndClass(className: AnyClass) -> AnyObject? {
        if self.nullToNil() == nil {
            return nil
        }
        
        if self.isKindOfClass(className) == false {
            print("Wrong class \(self.classForCoder) for value \(self), expected \(className)!")
            return (className as! NSObject.Type).init() as NSObject
        }
        
        return self
    }
    
    func convertToNumber() -> NSNumber? {
        let selfString = String(self)
        
        if selfString.isKindOfClass(NSString) == false {
            return nil
        }
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        return formatter.numberFromString(selfString)
    }
    
}