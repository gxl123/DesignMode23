//
//  WRReadingViewController.m
//  23DesignMode
//
//  Created by gxl on 2018/4/24.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "WRReadingViewController.h"
#import "Mediator.h"
@interface WRReadingViewController ()

@end

@implementation WRReadingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ReadingView";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(0, 200, 200, 60)];
    [bt setTitle:@"gotoBookDetail" forState:UIControlStateNormal];
    [bt setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(gotoDetail:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
}
- (void)gotoDetail:(NSString *)bookId {
    /*
    UIViewController *detailVC = [Mediator BookDetailComponent_viewControllerForDetail:bookId];
    [self.navigationController pushViewController:detailVC];
    
    UIViewController *reviewVC = [Mediator ReviewComponent_viewController:bookId type:1];
    [self.navigationController pushViewController:reviewVC];*/
    
    UIViewController *detailVC = [Mediator BookDetailComponent_viewController:@"11"];
    [self.navigationController pushViewController:detailVC animated:YES];
}
- (void)gotoReview:(NSString *)bookId {
//    Class cls = NSClassFromString(@"ReviewComponent");
//    UIViewController *reviewVC = [cls performSelector:NSSelectorFromString(@"reviewViewController:") withObject:@{@"bookId":bookId, @"type": @(1)}];
//    [self.navigationController pushViewController:reviewVC];
}

@end
