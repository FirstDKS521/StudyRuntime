//
//  RootViewController.m
//  StudyRuntime
//
//  Created by aDu on 2017/3/10.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"根视图";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"根视图出现");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"根视图消失");
}

- (IBAction)click:(id)sender {
    [self.navigationController pushViewController:[[FirstViewController alloc] init] animated:YES];
}

@end
