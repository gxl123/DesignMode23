//
//  Samsung.m
//  23DesignMode
//
//  Created by gxl on 2018/5/8.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Samsung.h"
#import "SoftProtocol.h"
@implementation Samsung
@synthesize soft;

-(void)showBrandsName{
    NSLog(@"当前手机名牌是:三星");
    [soft runSoft];
}
@end
