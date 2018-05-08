//
//  BrandsProtocol.h
//  23DesignMode
//
//  Created by gxl on 2018/5/8.
//  Copyright © 2018年 gxl. All rights reserved.
//
/**
 桥接模式
 假设有一个系统，它可以使用多种方式来进行分类，并且每一种分类都有可能变化(比如说上面说的手机，既可以按照手机品牌来分类，也可以按照手机软件来分类，两者都是有可能变化的)，那么就把这些分类方式分离出来让它们独立的变化，以减少它们之间的耦合
 桥接模式解决了两维或多维变化的问题
 */


#import <Foundation/Foundation.h>
#import "BrandsProtocol.h"
#import "SoftProtocol.h"
@protocol BrandsProtocol <NSObject>

@property (nonatomic,strong) id<SoftProtocol> soft;
-(void)showBrandsName;

@end
