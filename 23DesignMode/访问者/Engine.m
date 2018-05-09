//
//  Engine.m
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Engine.h"

@implementation Engine
- (id)initWithModelName:(NSString *)modelName{
    self = [super init];
    if (self) {
        _modelName = [modelName copy];
    }
    return  self;
}

- (void)appceptComponentVisitor:(id<ComponentsVisitProtocol>) visitor{
    [visitor visitEngine:self];
}
@end
