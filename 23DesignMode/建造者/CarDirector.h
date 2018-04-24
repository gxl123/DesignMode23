//
//  CarDirector.h
//  23DesignMode
//
//  Created by gxl on 2018/4/19.
//  Copyright © 2018年 gxl. All rights reserved.
//

//5.建造者模式（Builder Pattern）
//是抽象工厂模式的扩展，
//client->director->builder->product
//客户->指导者->建造者->产品
//将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
//建造者模式最主要的功能是基本方法的调用顺序安排，这些基本方法已经实现了，顺序不同产生的对象也不同；
//工厂方法则重点是创建，创建零件是它的主要职责，组装顺序则不是它关心的。

#import <Foundation/Foundation.h>
#import "Car.h"
#import "CarBuilder.h"
@interface CarDirector : NSObject
- (Car*) createChinaSuv:(CarBuilder*)builder;
- (Car*) createJapanSuv:(CarBuilder*)builder;
@end
