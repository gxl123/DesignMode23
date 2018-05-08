//
//  LHSales.h
//  23DesignMode
//
//  Created by gxl on 2018/5/8.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
//销售部门管理：车辆调配、配件、赠品等业务。
@interface LHSales : NSObject
// 提车
- (void)provideCar;

// 车贴膜
- (void)carFilm;

// 行车记录仪
- (void)tachograph;

// 发动机护板
- (void)engineGuard;

// 脚垫
- (void)mat;
@end
