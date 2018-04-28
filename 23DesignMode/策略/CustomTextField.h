//
//  CustomTextField.h
//  23DesignMode
//
//  Created by gxl on 2018/4/28.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"
@interface CustomTextField : UITextField
@property (nonatomic, strong) InputValidator *inputValidator;

- (BOOL) validate;
@end
