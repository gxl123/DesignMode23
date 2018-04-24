//
//  BookDetailComponent.h
//  23DesignMode
//
//  Created by gxl on 2018/4/24.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface BookDetailComponent : NSObject
+ (UIViewController *)detailViewController:(NSString *)bookId ;
@end
