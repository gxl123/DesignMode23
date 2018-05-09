//
//  Engine.h
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentsVisitProtocol.h"
@interface Engine : NSObject
@property(nonatomic,copy) NSString *modelName;

- (id)initWithModelName:(NSString *)modelName;
- (void)appceptComponentVisitor:(id<ComponentsVisitProtocol>) visitor;
@end
