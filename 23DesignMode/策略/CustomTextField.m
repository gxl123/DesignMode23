//
//  CustomTextField.m
//  23DesignMode
//
//  Created by gxl on 2018/4/28.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL) validate{
    NSError *error = nil;
    BOOL validateionResult = [_inputValidator ValidateInput:self error:&error];
    if (!validateionResult) {
        NSLog(@"验证失败 %@ %@",[error localizedDescription],[error localizedFailureReason]);
    }
    return validateionResult;
}

@end
