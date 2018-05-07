//
//  ContentView.h
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewAdapterProtocol.h"
@interface ContentView : UIView
-(void)loadData:(id<ContentViewAdapterProtocol>)data;
@end
