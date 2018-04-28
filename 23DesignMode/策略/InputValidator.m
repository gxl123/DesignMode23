//
//  InputValidator.m
//  23DesignMode
//
//  Created by gxl on 2018/4/28.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

- (BOOL) ValidateInput:(UITextField *)input error:(NSError **)error{
    if (error) {
        *error = nil;
    }
    return NO;
}
@end
