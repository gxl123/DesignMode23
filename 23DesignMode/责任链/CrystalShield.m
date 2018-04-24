//
//  CrystalShield.m
//  23DesignMode
//
//  Created by gxl on 2018/4/20.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicFireAttack.h"
@implementation CrystalShield
- (void) handleAttack:(Attack *)attack{
    if ([attack isKindOfClass:[MagicFireAttack class]]) {
        //攻击没有通过这个盾牌
        NSLog(@"No damage from a magic fire attack!");
    }
    [super handleAttack:attack];
}
@end
