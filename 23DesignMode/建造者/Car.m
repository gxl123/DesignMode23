//
//  Car.m
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Car.h"

@implementation Car
- (id)init{
    if (self = [super init]) {
        _wheelSize = 16.0;
        _enginePower = 2.0;
    }
    return self;
}
@end
