//
//  WRBookDetailViewController.m
//  23DesignMode
//
//  Created by gxl on 2018/4/24.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "WRBookDetailViewController.h"

@interface WRBookDetailViewController ()
@property (nonatomic,strong) NSString* bookId;
@end

@implementation WRBookDetailViewController
- (id)initWithBookId:(NSString *)bookId{
    self = [super init];
    if (self) {
        self.bookId = bookId;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ReadingView";
}



@end
