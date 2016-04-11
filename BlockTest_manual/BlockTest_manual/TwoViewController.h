//
//  TwoViewController.h
//  BlockTest_manual
//
//  Created by admin on 16/3/9.
//  Copyright © 2016年 admin. All rights reserved.
//

//代理页面传值

#import "ViewController.h"


@protocol TwoVCDelegate <NSObject>
- (void)passTextValue:(NSString *)textField;
@end

@interface TwoViewController : UIViewController
@property (nonatomic,assign)id<TwoVCDelegate>delegate;
@end

