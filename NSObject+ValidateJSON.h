//
//  NSObject+ValidateJSON.h
//
//  Created by ArmyXomuiL on 08.05.16.
//  Copyright © 2016 Pirro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSObject (ValidateJSON)

- (id)nullToNil;
- (id)checkForNull;
- (id)checkForNullAndClass:(Class)class;
- (NSNumber *)convertToNumber;

@end
