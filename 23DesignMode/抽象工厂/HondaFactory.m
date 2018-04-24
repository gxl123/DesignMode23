//
//  HondaFactory.m
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "HondaFactory.h"
#import "AccordHondaFactory.h"
#import "FitHondaFactory.h"
@implementation HondaFactory
+ (HondaFactory*)AccordHondaFactory{
    return [[AccordHondaFactory alloc]init];
}
+ (HondaFactory*)FitHondaFactory{
    return [[FitHondaFactory alloc]init];
}
- (void)produceWheel{
    NSAssert(YES, @"子类没写实现此方法");
}
- (void)producengine{
    NSAssert(YES, @"子类没写实现此方法");
}
@end
