//
//  LHService.h
//  23DesignMode
//
//  Created by gxl on 2018/5/8.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
//售后服务部门管理：售前服务（贴膜、装配件、洗车、上牌等服务）和售后服务（维修、保养等）
@interface LHService : NSObject
// 洗车服务
- (void)carWash;

// 上牌服务
- (void)applyPlate;

// 贴膜服务
- (void)filming;

// 安装行车记录仪
- (void)installTachograph;
@end
