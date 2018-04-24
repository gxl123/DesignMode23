//
//  CarBuilder.h
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
@interface CarBuilder : NSObject
@property (nonatomic, readonly) Car *car;

- (CarBuilder*) buildNewCar;
- (CarBuilder*) buildWheel:(float) value;
- (CarBuilder*) buildEngine:(float) value;
@end
