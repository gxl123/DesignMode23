//
//  SuvCarBuilder.m
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "SuvCarBuilder.h"

@implementation SuvCarBuilder
- (CarBuilder*) buildWheel:(float) value{
    self.car.weight = 2000+ value*100;
    return [super buildWheel:value];
}
- (CarBuilder*) buildEngine:(float) value{
    self.car.weight = 2000+ value*10;
    return [super buildEngine:value];
}
@end
