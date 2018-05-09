//
//  ComponentsRepairVisitor.m
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "ComponentsRepairVisitor.h"

@implementation ComponentsRepairVisitor
- (void) visitWheel:(Wheel*)wheel{
    NSLog(@"我是维修人员，正在维修轮胎%@",wheel);
}
- (void) visitEngine:(Engine*)engine{
    NSLog(@"我是维修人员，正在维修引擎%@",engine);
}
@end
