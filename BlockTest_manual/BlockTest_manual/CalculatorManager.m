//
//  CalculatorManager.m
//  BlockTest_manual
//
//  Created by admin on 16/3/10.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "CalculatorManager.h"
//static CalculatorManager *defaultCalculatorManager = nil;
@implementation CalculatorManager
//单例
//+(CalculatorManager *)sharedCalculatorManager
//{
//    if (defaultCalculatorManager==nil)
//    {
//        defaultCalculatorManager=[[self alloc] init];
//    }
//    
//    return defaultCalculatorManager;
//}

//dispatch_once这个函数， 它可以保证整个应用程序生命周期中某段代码只被执行一次！，有效的避免两个线程同时调用这个init（推荐使用）
+(CalculatorManager *)sharedCalculatorManager{
    static dispatch_once_t predicate;
    static CalculatorManager * defaultCalculatorManager;
    dispatch_once(&predicate, ^{
        defaultCalculatorManager=[[self alloc] init];
    });
    return defaultCalculatorManager;
}

//方法中定义了一个block数据类型参数（返回值为int类型的，且带有一个int类型的形参）
-(void)calculate:(int (^)(int))calculateBlock
{
    //calculateBlock接受外界传入的代码块，也就意味着怎么去操作是由外界调用者决定的
    _result = calculateBlock(_result);//将_result的值作为实参传入
}
@end
