//
//  MetalArmor.m
//  23DesignMode
//
//  Created by gxl on 2018/4/20.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"
@implementation MetalArmor
- (void) handleAttack:(Attack *)attack{
    if ([attack isKindOfClass:[SwordAttack class]]) {
        //攻击没有通过这个盾牌
        NSLog(@"No damage from a sword attack!");
    }
    [super handleAttack:attack];
}
@end
