//
//  TwoViewController.m
//  BlockTest_manual
//
//  Created by admin on 16/3/9.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "TwoViewController.h"
#import "AppDelegate.h"

@interface TwoViewController ()
{
    UITextField *tf;
}
@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    tf = [[UITextField alloc]initWithFrame:CGRectMake(0, OFFSETY, 300, 50)];
     tf.backgroundColor = [UIColor greenColor];
    tf.placeholder = @"输入要传到上一个页面的内容";
    [self.view addSubview:tf];
    
    UIButton *btn_click = [UIButton buttonWithType:UIButtonTypeSystem];
    btn_click.frame = CGRectMake(0, OFFSETY + 50+20, 200, 50);
    btn_click.backgroundColor = [UIColor yellowColor];
    [btn_click setTitle:@"返回" forState:UIControlStateNormal];
    [btn_click addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_click];
}

- (void)click:(id)sender
{
    
    if (_delegate&&[_delegate respondsToSelector:@selector(passTextValue:)]) {
        [_delegate passTextValue:tf.text];
    }
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
