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
#import "Model1.h"
#import "Model2.h"
#import "Model1Adapter.h"
#import "Model2Adapter.h"
#import "ContentView.h"
#import "BrandsProtocol.h"
#import "LH4SWaiter.h"
#import "NissanCar.h"
#import "Wheel.h"
#import "Engine.h"
#import "ComponentsRepairVisitor.h"
#import "TestCommandViewController.h"
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
    
///////////////////////////////////////////////////////////////////////////
    //适配器
    /*========================类适配器===========================*/
    //第一个
    Model1 *model1 = [[Model1 alloc]init];
    model1.conntentStr  =  @"时间：10：32:12";
    model1.imageName    =  @"shijian";
    
    Model1Adapter *model1Adapter = [[Model1Adapter alloc]initWithData:model1];
    
    ContentView *contentView = [[ContentView alloc]initWithFrame:CGRectMake(100, 100, 200, 20)];
    [contentView loadData:model1Adapter];
    [self.view addSubview:contentView];
    //第二个
    Model2 *model2  = [[Model2 alloc]init];
    model2.conntentStr =  @"心率：100次";
    model2.image       =  [UIImage imageNamed:@"mapHeaderIcon"];
    
    Model2Adapter *modelAdapter2 = [[Model2Adapter alloc]initWithData:model2];
    
    ContentView *contentView1 = [[ContentView alloc]initWithFrame:CGRectMake(100, 200, 200, 20)];
    [contentView1 loadData:modelAdapter2];
    [self.view addSubview:contentView1];
    
    /*========================对象适配器===========================*/
    
    Model2 *model3  = [[Model2 alloc]init];
    model3.conntentStr =  @"心率：100次";
    model3.image       =  [UIImage imageNamed:@"mapHeaderIcon"];
    
    ContentViewAdapter *modelAdapter3 = [[ModelAdapter alloc]initWithData:model3];
    
    ContentView *contentView3 = [[ContentView alloc]initWithFrame:CGRectMake(100, 300, 200, 20)];
    [contentView3 loadData:modelAdapter3];
    [self.view addSubview:contentView3];
    
    Model1 *model4 = [[Model1 alloc]init];
    model4.conntentStr  =  @"时间：10：32:12";
    model4.imageName    =  @"shijian";
    
    ContentViewAdapter *modelAdapter4 = [[ModelAdapter alloc]initWithData:model4];
    
    ContentView *contentView4 = [[ContentView alloc]initWithFrame:CGRectMake(100, 400, 200, 20)];
    [contentView4 loadData:modelAdapter4];
    [self.view addSubview:contentView4];
 // // // /////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    //桥接
    id<BrandsProtocol> brands = [[NSClassFromString(@"IPhone") alloc]init];
    brands.soft =  [[NSClassFromString(@"QQ") alloc]init];
    [brands showBrandsName];
    
    //外观模式
    LH4SWaiter* _waiter = [[LH4SWaiter alloc] init];
    // 现金买车
    [_waiter buyCarWithCash];
    // 贷款买车
    [_waiter buyCarWithLoad];
    
    
    //访问者
    NissanCar *myCar = [[NissanCar alloc]init];
    Engine *engine = [[Engine alloc]initWithModelName:@"V8"];
    Wheel *wheelA = [[Wheel alloc]init];
    Wheel *wheelB = [[Wheel alloc]init];
    Wheel *wheelC = [[Wheel alloc]init];
    Wheel *wheelD = [[Wheel alloc]init];
    myCar.engine = engine;
    [myCar addWheel:wheelA atIndex:0];
    [myCar addWheel:wheelA atIndex:1];
    [myCar addWheel:wheelA atIndex:2];
    [myCar addWheel:wheelA atIndex:3];
    NSLog(@"myCar:%@",myCar);
    
    //对组件进行维修
    ComponentsRepairVisitor *cRepairVisitor = [[ComponentsRepairVisitor alloc] init];
    [myCar appceptComponentVisitor:cRepairVisitor];
    
    //命令模式
    TestCommandViewController * tcvc = [[TestCommandViewController alloc]init];
    [self.navigationController pushViewController:tcvc animated:YES];
    
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
