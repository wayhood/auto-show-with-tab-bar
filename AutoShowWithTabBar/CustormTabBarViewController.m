//
//  CustormTabBarViewController.m
//  AutoShowWithTabBar
//
//  Created by wayhood on 16/2/2.
//  Copyright © 2016年 wayhood. All rights reserved.
//

#import "CustormTabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface CustormTabBarViewController ()

@end

@implementation CustormTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)preferredFocusedView {
    UIViewController *vc = self.selectedViewController;
    if ([vc isKindOfClass:[FirstViewController class]]) {
        return [vc.view viewWithTag:3];
    } else if ([vc isKindOfClass:[SecondViewController class]]) {
        return [vc.view viewWithTag:2];
    }
    return nil;
}

@end
