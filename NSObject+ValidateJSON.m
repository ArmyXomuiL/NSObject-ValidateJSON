//
//  NSObject+ValidateJSON.m
//
//  Created by ArmyXomuiL on 08.05.16.
//  Copyright © 2016 Pirro. All rights reserved.
//

#import "NSObject+ValidateJSON.h"

@implementation NSObject (ValidateJSON)

- (id)nullToNil {
    if ([self isKindOfClass:[NSNull class]]) {
        return nil;
    }
    
    return self;
}

- (id)checkForNull {
    if (![self nullToNil]) {
        return nil;
    }
    
    return self;
}

- (id)checkForNullAndClass:(Class)class {
    if (![self nullToNil]) {
        return nil;
    }
    
    if (![self isKindOfClass:class]) {
        NSLog(@"Wrong class '%@' for value '%@', expected '%@'!", [self class], self ,class);
        return [class new];
    }
    
    return self;
}

- (NSNumber *)convertToNumber {
    NSString *string = (NSString *)self;
    if (![string isKindOfClass:[NSString class]]) return nil;
    
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter numberFromString:string];
}

@end
