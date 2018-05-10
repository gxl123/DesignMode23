//
//  DarkerCommand.m
//  23DesignMode
//
//  Created by gxl on 2018/5/10.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "DarkerCommand.h"
@interface DarkerCommand()
@property (nonatomic,strong)Receiver *receiver;
@property (nonatomic,assign)float paramter;
@end

@implementation DarkerCommand
- (instancetype)initWithReceiver:(Receiver*)receiver withParamter:(CGFloat)paramter
{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}
- (void)excute{
    [self.receiver makeViewDarker:self.paramter];
}

- (void)rollBackExcute{
    [self.receiver makeViewLighter:self.paramter];
}
@end
