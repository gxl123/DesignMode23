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
#import "CustomTextField.h"
#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     //抽象工厂模式
    HondaFactory* HF = [HondaFactory AccordHondaFactory];
    [HF produceWheel];
    
     //建造者模式
    CarBuilder *carBuilder = [[SuvCarBuilder alloc]init];
    CarDirector * carDirector = [[CarDirector alloc]init];
    Car* chinaSuv = [carDirector createChinaSuv:carBuilder];
    Car* JapanSuv = [carDirector createJapanSuv:carBuilder];
    
     //责任链模式
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
    
   /*
    //中介者模式
    WRReadingViewController * vc = [[WRReadingViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    */
    
    //策略模式
    CustomTextField * tf = [[CustomTextField alloc]init];
    tf.inputValidator = [[NumericInputValidator alloc]init];//添加策略验证必须输入数字
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField*)textField validate];//验证是否符合规则
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
