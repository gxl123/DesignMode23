//
//  ContentView.m
//  23DesignMode
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "ContentView.h"
#define Height   self.frame.size.height
#define Width    self.frame.size.width
@interface ContentView()
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) NSString *contentStr;
@end

@implementation ContentView{
    UIImageView *_imageView;
    UILabel *_labelContent;
}
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setup];
        
    }
    return self;
}
- (void)setup {
    _imageView    = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,Height, Height)];
    [self addSubview:_imageView];
    _labelContent = [[UILabel alloc]initWithFrame:CGRectMake(Height+7, 0, Width -7-Height, Height)];
    [self addSubview:_labelContent];
}

-(void)loadData:(id<ContentViewAdapterProtocol>)data {
    _image      = [data image];
    _contentStr = [data contentStr];
}
-(void)setImage:(UIImage *)image{
    _image           = image;
    _imageView.image = image;
}
-(void)setContentStr:(NSString *)contentStr{
    _contentStr         = contentStr;
    _labelContent.text  = contentStr;
}

@end
