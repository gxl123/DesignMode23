//
//  Mediator.h
//  23DesignMode
//
//  Created by gxl on 2018/4/24.
//  Copyright © 2018年 gxl. All rights reserved.
//
//中介者模式
//这样同样做到每个模块间没有依赖，Mediator 也不依赖其他组件，调用者需要依赖Mediator

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Mediator : NSObject
+ (UIViewController *)BookDetailComponent_viewController:(NSString *)bookId;
+ (UIViewController *)ReviewComponent_viewController:(NSString *)bookId type:(NSInteger)type;
@end
