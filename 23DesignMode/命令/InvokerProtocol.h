//
//  InvokerProtocol.h
//  23DesignMode
//
//  Created by gxl on 2018/5/10.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol InvokerProtocol <NSObject>
//执行
- (void)excute;
//撤销
- (void)rollBackExcute;
@end
