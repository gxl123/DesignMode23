//
//  CarDirector.m
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "CarDirector.h"

@implementation CarDirector
- (Car*) createChinaSuv:(CarBuilder*)builder{
    [[[builder buildNewCar]
      buildWheel:20.0]
     buildEngine:12.5];
    return builder.car;
}
- (Car*) createJapanSuv:(CarBuilder*)builder{
    [[[builder buildNewCar]
      buildWheel:13.0]
     buildEngine:16.5];
    return builder.car;
}
@end
