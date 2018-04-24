//
//  SuvCarBuilder.h
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "CarBuilder.h"

@interface SuvCarBuilder : CarBuilder
- (CarBuilder*) buildWheel:(float) value;
- (CarBuilder*) buildEngine:(float) value;
@end
