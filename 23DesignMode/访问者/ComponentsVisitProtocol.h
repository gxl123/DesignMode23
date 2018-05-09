//
//  ComponentsVisitProtocol.h
//  23DesignMode
//
//  Created by gxl on 2018/5/9.
//  Copyright © 2018年 gxl. All rights reserved.
//
/**访问者模式
    使用访问者模式后，添加操作，只需实现具体的访问者，不会对类的结构造成破坏。
 */
#import <Foundation/Foundation.h>
@class Wheel,Engine;
@protocol ComponentsVisitProtocol <NSObject>
- (void) visitWheel:(Wheel*)wheel;
- (void) visitEngine:(Engine*)engine;
@end
