//
//  ViewController.m
//  BlockTest_manual
//
//  Created by admin on 16/3/9.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "OneViewController.h"
#import "CalculatorManager.h"

@interface ViewController ()<TwoVCDelegate>
{
    UILabel *lb_comment;
}
@end
//CGFloat height_nav = 64;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    NSLog(@"SYSTEMVERSION----%.1f",SYSTEMVERSION);
    lb_comment = [[UILabel alloc] initWithFrame:CGRectMake(0, OFFSETY, 200, 50)];
    lb_comment.backgroundColor = [UIColor greenColor];
    [self.view addSubview:lb_comment];
    
    UIButton *btn_click = [UIButton buttonWithType:UIButtonTypeSystem];
    btn_click.frame = CGRectMake(0, OFFSETY + 50+20, 200, 50);
    btn_click.backgroundColor = [UIColor yellowColor];
    [btn_click setTitle:@"点击" forState:UIControlStateNormal];
    [btn_click addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_click];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //block作参数使用
    CalculatorManager *manager = [CalculatorManager sharedCalculatorManager];
    [manager calculate:^int(int i) {
        //参数i自加1，然后返回
        i++;
        return i;
    }];
    NSLog(@"manager.result-----%d",manager.result);
}

- (void)click:(id)sender
{
    //block传值
    OneViewController *oneVC = [[OneViewController alloc] init];
    [oneVC nextVCBlock:^(NSString *textField){
        [lb_comment setText:textField];
    }];
    [self.navigationController pushViewController:oneVC animated:NO];
    
//    //代理传值
//    TwoViewController *twoVC = [TwoViewController new];
//    twoVC.delegate = self;
//    [self.navigationController pushViewController:twoVC animated:NO];
}

- (void)passTextValue:(NSString *)textField
{
    lb_comment.text = textField;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
