//
//  ModelAdapter.m
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "ModelAdapter.h"
#import "Model1.h"
#import "Model2.h"

@implementation ModelAdapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}
-(UIImage*)image{
    if ([self.data isMemberOfClass:[Model1 class]]) {
        Model1 *model =  self.data;
        return [UIImage imageNamed:model.imageName];
    }else{
        Model2 *model =  self.data;
        return model.image;
    }
}

-(NSString*)contentStr{
    if ([self.data isMemberOfClass:[Model1 class]]) {
        Model1 *model =  self.data;
        return model.conntentStr;
    }else{
        Model2 *model =  self.data;
        return model.conntentStr;
    }
}


@end
