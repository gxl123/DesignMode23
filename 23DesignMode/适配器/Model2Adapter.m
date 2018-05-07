//
//  ItemModelAdeapter.m
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Model2Adapter.h"
#import "Model2.h"
@implementation Model2Adapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}
-(UIImage*)image{
    Model2 *model =  self.data;
    return model.image;
}

-(NSString*)contentStr{
    Model2 *model =  self.data;
    return model.conntentStr;
}

@end
