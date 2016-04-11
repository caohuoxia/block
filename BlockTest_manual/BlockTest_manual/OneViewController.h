//
//  OneViewController.h
//  BlockTest_manual
//
//  Created by admin on 16/3/9.
//  Copyright © 2016年 admin. All rights reserved.
//

//block页面传值

#import "ViewController.h"



typedef void(^NextVCBlock)(NSString *textField);




@interface OneViewController : UIViewController
- (void)nextVCBlock:(NextVCBlock)block;
@end
