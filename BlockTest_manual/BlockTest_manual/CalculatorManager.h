//
//  CalculatorManager.h
//  BlockTest_manual
//
//  Created by admin on 16/3/10.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorManager : NSObject
/** 计算结果值*/
@property(assign, nonatomic) int result;
+(instancetype)sharedCalculatorManager;

//block作为参数时格式与其它类型定义时一致，都是(类型)变量名，看起来有些晕人
-(void)calculate:(int(^)(int))calculateBlock;
@end
