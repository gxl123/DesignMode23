//
//  ViewController.m
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "ViewController.h"
#import "HondaFactory.h"
#import "CarDirector.h"
#import "SuvCarBuilder.h"
#import "Avator.h"
#import "MetalArmor.h"
#import "CrystalShield.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightningAttack.h"
#import "WRReadingViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    HondaFactory* HF = [HondaFactory AccordHondaFactory];
    [HF produceWheel];
    
    CarBuilder *carBuilder = [[SuvCarBuilder alloc]init];
    CarDirector * carDirector = [[CarDirector alloc]init];
    Car* chinaSuv = [carDirector createChinaSuv:carBuilder];
    Car* JapanSuv = [carDirector createJapanSuv:carBuilder];
    
    //创建新的人物
    //加装护甲
    AttackHandler *avatar = [[Avator alloc] init];
    AttackHandler *metalArmoredAvatar = [[MetalArmor alloc]init];
    [metalArmoredAvatar setNextAttackHandler:avatar];
    AttackHandler *superAvatar = [[CrystalShield alloc]init];
    [superAvatar setNextAttackHandler:metalArmoredAvatar];
    //连续攻击
    Attack *swordAttack = [[SwordAttack alloc]init];
    [superAvatar handleAttack:swordAttack];
    Attack *magicFireAttack = [[MagicFireAttack alloc]init];
    [superAvatar handleAttack:magicFireAttack];
    Attack *lightningAttack = [[LightningAttack alloc]init];
    [superAvatar handleAttack:lightningAttack];
    */
   

    
    WRReadingViewController * vc = [[WRReadingViewController alloc]init];
//     UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:vc];
//       nav.navigationBarHidden = NO;
//    [self presentViewController:nav animated:YES completion:nil];
   //[self pushViewController:nav animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
