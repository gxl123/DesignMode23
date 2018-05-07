//
//  ContentViewAdapterProtocol.h
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//
//适配器模式
/**一个View对应多个Model,View与Model接耦合，不用修改View或Model,只需修改或增加Adapter
*/
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol ContentViewAdapterProtocol <NSObject>
    -(UIImage*)image;
    -(NSString*)contentStr;
@end
