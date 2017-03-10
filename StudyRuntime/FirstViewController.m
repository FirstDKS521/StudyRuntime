//
//  FirstViewController.m
//  StudyRuntime
//
//  Created by aDu on 2017/3/10.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一个";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"第一个视图出现");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"第一个视图消失");
}

- (IBAction)click:(id)sender {
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:YES];
}

@end
