//
//  AttackHandler.m
//  23DesignMode
//
//  Created by gxl on 2018/4/20.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler
- (void) handleAttack:(Attack *)attack{
    [_nextAttackHandler handleAttack:attack];
}
@end
