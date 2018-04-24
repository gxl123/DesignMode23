//
//  AttackHandler.h
//  23DesignMode
//
//  Created by gxl on 2018/4/20.
//  Copyright © 2018年 gxl. All rights reserved.
//
//10.责任链模式
//使多个对象都有机会处理请求，从而避免请求的发送者和接受者之间发送耦合。此模式 将这些对象练成一个链，并沿着这条链传递请求，直到有
//一个对象处理它为止。
#import <Foundation/Foundation.h>
#import "Attack.h"
@interface AttackHandler : NSObject
@property (nonatomic, strong) AttackHandler *nextAttackHandler;
- (void) handleAttack:(Attack *)attack;
@end
