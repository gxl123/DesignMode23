//
//  InputValidator.h
//  23DesignMode
//
//  Created by gxl on 2018/4/28.
//  Copyright © 2018年 gxl. All rights reserved.
//
//策略模式
/*
 策略模式实例：排序算法，NSArray的sortedArrayUsingSelector；经典的鸭子会叫，会飞案例。
优点：
1、 提供了管理相关的算法族的办法。可以封装一些算法，不想让算法直接暴露出来。
2、可以避免使用多重条件转移语句，消除根据类型决定使用什么算法的一些if-else的语句。
缺点：
1、使用之前必须知道所有的策略，使用中不能动态改变，在实例话的时候就设定好需要使用的策略类了。
*/

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InputValidator : NSObject
- (BOOL) ValidateInput:(UITextField *)input error:(NSError **)error;
@end
