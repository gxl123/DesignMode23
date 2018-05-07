//
//  ContentViewAdapter.h
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContentViewAdapterProtocol.h"
@interface ContentViewAdapter : NSObject<ContentViewAdapterProtocol>
@property (nonatomic, weak) id data;
- (instancetype)initWithData:(id)data;
@end
