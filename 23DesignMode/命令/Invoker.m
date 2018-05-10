//
//  Invoker.m
//  23DesignMode
//
//  Created by gxl on 2018/5/10.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Invoker.h"
@interface Invoker ()
@property (nonatomic,strong)NSMutableArray *commandArray;//command列表
@end

@implementation Invoker

implementationSingleton(Invoker);

- (NSMutableArray*)commandArray{
    if (_commandArray == nil) {
        _commandArray = [NSMutableArray array];
    }
    return _commandArray;
}

- (void)addExcute:(id<InvokerProtocol>)command{
    [command excute];
    [self.commandArray addObject:command];
}

-(void)rollBack{
    [self.commandArray.lastObject rollBackExcute];
    [self.commandArray removeLastObject];
}
@end
