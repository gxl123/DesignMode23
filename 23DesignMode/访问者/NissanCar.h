//
//  Car.h
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentsVisitProtocol.h"
#import "Wheel.h"
#import "Engine.h"
@interface NissanCar : NSObject
@property (nonatomic,strong) Engine *engine;
@property (nonatomic,readonly)NSArray *arrayOfWheels;

- (void)addWheel:(Wheel *)wheel atIndex:(NSUInteger) index;
- (void)appceptComponentVisitor:(id<ComponentsVisitProtocol>) visitor;
@end
