//
//  LighterCommand.h
//  23DesignMode
//
//  Created by gxl on 2018/5/10.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InvokerProtocol.h"
#import "Receiver.h"
@interface LighterCommand : NSObject<InvokerProtocol>
- (instancetype)initWithReceiver:(Receiver*)receiver withParamter:(CGFloat)paramter;
@end
