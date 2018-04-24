//
//  HondaFactory.h
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//3.抽象工厂模式（Abstract Factory Pattern）
//1.外界只需调用基类Method,无需调用子类Method，
//2.未一系列有相同行为的对象提供一个统一的接口
//3.Cocoa Touch 中[NSNumber numberWithBool:YES],[NSNumber numberWithChar:’a’] NSData、NSArray、NSDictionary、NSString都是抽象工厂模式
#import <Foundation/Foundation.h>

@interface HondaFactory : NSObject
+ (HondaFactory*)AccordHondaFactory;
+ (HondaFactory*)FitHondaFactory;

- (void)produceWheel;
- (void)producengine;
@end
