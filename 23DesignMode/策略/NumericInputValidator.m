//
//  NumericInputValidator.m
//  23DesignMode
//
//  Created by gxl on 2018/4/28.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "NumericInputValidator.h"
static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";
@implementation NumericInputValidator
- (BOOL) ValidateInput:(UITextField *)input error:(NSError **)error{
    NSError *regError =nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[input text] options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
    
    if (numberOfMatches == 0) {
        if (error !=nil) {
            NSString *description = @"输入验证失败";
            NSString *reason = @"只能输入数字";
            NSArray *objArray = [NSArray arrayWithObjects:description,reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:objArray forKey:keyArray];
            
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1001 userInfo:userInfo];
        }
        return NO;
    }
    
    return YES;
}
@end
