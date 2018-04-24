//
//  Mediator.m
//  23DesignMode
//
//  Created by gxl on 2018/4/24.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator
+ (UIViewController *)BookDetailComponent_viewController:(NSString *)bookId {
    Class cls = NSClassFromString(@"BookDetailComponent");
    return [cls performSelector:NSSelectorFromString(@"detailViewController:") withObject:@{@"bookId":bookId}];
}
+ (UIViewController *)ReviewComponent_viewController:(NSString *)bookId type:(NSInteger)type {
    Class cls = NSClassFromString(@"ReviewComponent");
    return [cls performSelector:NSSelectorFromString(@"reviewViewController:") withObject:@{@"bookId":bookId, @"type": @(type)}];
}
@end
