//
//  AlphaInputValidator.m
//  23DesignMode
//
//  Created by gxl on 2018/4/28.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "AlphaInputValidator.h"
static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";
@implementation AlphaInputValidator
- (BOOL) ValidateInput:(UITextField *)input error:(NSError **)error{
    NSError *regError =nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[input text] options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
    
    if (numberOfMatches == 0) {
        if (error !=nil) {
            NSString *description = @"输入验证失败";
            NSString *reason = @"只能输入字母";
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
