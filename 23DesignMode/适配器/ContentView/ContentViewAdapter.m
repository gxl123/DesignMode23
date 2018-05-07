//
//  ContentViewAdapter.m
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "ContentViewAdapter.h"
//抽象类
@implementation ContentViewAdapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}
-(UIImage*)image{
    return nil;
}

-(NSString*)contentStr{
    return nil;
}
@end
