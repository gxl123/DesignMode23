//
//  BookDetailComponent.m
//  23DesignMode
//
//  Created by gxl on 2018/4/24.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "BookDetailComponent.h"
#import "WRBookDetailViewController.h"
@implementation BookDetailComponent
+ (UIViewController *)detailViewController:(NSString *)bookId {
    WRBookDetailViewController *detailVC = [[WRBookDetailViewController alloc] initWithBookId:bookId];
    return detailVC;
}
@end
