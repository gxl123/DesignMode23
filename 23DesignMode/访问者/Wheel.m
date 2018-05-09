//
//  Wheel.m
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Wheel.h"

@implementation Wheel
- (id)init{
    self = [super init];
    if(self){
        _diameter = 400.0f;
    }
    return self;
}
- (void)appceptComponentVisitor:(id<ComponentsVisitProtocol>) visitor{
    [visitor visitWheel:self];
}
@end
