//
//  LH4SWaiter.h
//  23DesignMode
//
//  Created by gxl on 2018/5/8.
//  Copyright © 2018年 gxl. All rights reserved.
//
/**外观模式
 1.使用外观模式可以使项目更好的分层，增强了代码的扩展性。
 2.客户端屏蔽了子系统组件，使客户端和子系统之间实现了松耦合关系。
 */
#import <Foundation/Foundation.h>
//4S销售接待人员的角色类
@interface LH4SWaiter : NSObject
- (void)buyCarWithCash;// 现金买车

- (void)buyCarWithLoad;// 贷款买车
@end
