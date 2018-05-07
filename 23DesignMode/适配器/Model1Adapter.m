//
//  ContentModelAdeapter.m
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "Model1Adapter.h"
#import "Model1.h"
@implementation Model1Adapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        
        self.data = data;
        
    }
    
    return self;
}
-(UIImage*)image{
    Model1 *model =  self.data;
    return [UIImage imageNamed:model.imageName];
}
-(NSString*)contentStr{
    Model1 *model =  self.data;
    return model.conntentStr;
}
@end
