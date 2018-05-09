//
//  ComponentsUpgradeVisitor.m
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "ComponentsUpgradeVisitor.h"

@implementation ComponentsUpgradeVisitor
- (void) visitWheel:(Wheel*)wheel{
     NSLog(@"我是升级人员，正在升级轮胎%@",wheel);
}
- (void) visitEngine:(Engine*)engine{
     NSLog(@"我是升级人员，正在升级引擎%@",engine);
}
@end
