//
//  LHFinance.h
//  23DesignMode
//
//  Created by gxl on 2018/5/8.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
//财务部门管理：现金付款、申请贷款、审核贷款、放款等业务。
@interface LHFinance : NSObject
// 现金支付
- (void)cashPayment;

// 申请贷款
- (BOOL)applyLoan;

// 审核贷款
- (BOOL)auditLoan;

// 放款
- (BOOL)getLoad;
@end
