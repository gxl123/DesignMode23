//
//  Wheel.h
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentsVisitProtocol.h"
@interface Wheel : NSObject
@property(nonatomic,assign) float  diameter; //车轮直径


- (void)appceptComponentVisitor:(id<ComponentsVisitProtocol>) visitor;

@end
