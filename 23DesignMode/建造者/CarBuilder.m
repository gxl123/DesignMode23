//
//  CarBuilder.m
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "CarBuilder.h"

@implementation CarBuilder
- (CarBuilder*) buildNewCar{
    _car = [[Car alloc]init];
    return self;
}
- (CarBuilder*) buildWheel:(float) value{
    _car.wheelSize = value;
    return self;
}
- (CarBuilder*) buildEngine:(float) value{
    _car.enginePower = value;
    return self;
}
@end
