//
//  Car.m
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "NissanCar.h"
@interface NissanCar()

@property (nonatomic, readwrite) NSMutableArray *mutableArrayOfWheels;

@end
@implementation NissanCar
- (id)init
{
    if (self = [super init]) {
        _mutableArrayOfWheels = [[NSMutableArray alloc] initWithCapacity:4];
    }
    
    return self;
}

- (void)addWheel:(Wheel *)wheel atIndex:(NSUInteger) index
{
    [_mutableArrayOfWheels insertObject:wheel atIndex:index];
}

- (NSArray *)arrayOfWheels
{
    return [_mutableArrayOfWheels copy];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"My car: %@", [NSDictionary dictionaryWithObjects:@[_engine, self.arrayOfWheels] forKeys:@[@"Engine", @"Wheels"]]];
}
- (void)appceptComponentVisitor:(id<ComponentsVisitProtocol>) visitor{
    [_engine appceptComponentVisitor:visitor];
    for (Wheel *w in self.arrayOfWheels) {
        [w appceptComponentVisitor:visitor];
    }
}
@end
