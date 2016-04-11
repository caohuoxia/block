//
//  AppDelegate.h
//  BlockTest_manual
//
//  Created by admin on 16/3/9.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SYSTEMVERSION   [[UIDevice currentDevice].systemVersion floatValue]
#define OFFSETY         (SYSTEMVERSION >= 7.0 ? 64 : 44)
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

