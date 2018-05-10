//
//  Invoker.h
//  23DesignMode
//
//  Created by gxl on 2018/5/10.
//  Copyright © 2018年 gxl. All rights reserved.
//
/**
 命令模式
 可以记录、撤销命令
 */
#import <Foundation/Foundation.h>
#import "Singleton.h"
#import "InvokerProtocol.h"
@interface Invoker : NSObject
interfaceSingleton(Invoker);

/**
 *  添加指令操作
 *
 *  @param command 指令
 */
- (void)addExcute:(id<InvokerProtocol>)command;

/**
 *  回退操作
 */
-(void)rollBack;
@end
