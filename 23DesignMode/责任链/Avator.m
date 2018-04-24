//
//  Avator.m
//  23DesignMode
//
//  Created by gxl on 2018/4/20.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Avator.h"

@implementation Avator
- (void) handleAttack:(Attack *)attack{
    // 当攻击到达这里时，我就被击中了。
    NSLog(@"OH! I'm hit with a %@", [attack class]);

}
@end
