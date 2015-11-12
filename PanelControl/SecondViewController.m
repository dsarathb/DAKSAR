//
//  SecondViewController.m
//  PanelControl
//
//  Created by Sandeep Reddy Dega on 24/09/15.
//  Copyright © 2015 Sandeep Reddy Dega. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "RightViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStylePlain target:self.viewDeckController action:@selector(toggleRightView)];
    // Do any additional setup after loading the view.
    
    UIButton *optBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    optBtn.frame = CGRectMake(150, 200, 150, 35);
    [optBtn setTitle:@"Option" forState:UIControlStateNormal];
    [optBtn addTarget:self action:@selector(optBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:optBtn];

    //self.viewDeckController.navigationControllerBehavior = IIViewDeckNavigationControllerContained;
}

- (void)optBtnAction:(id)sender {
    ThirdViewController *thrdViewController = [[ThirdViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    RightViewController *rightController = [[RightViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    IIViewDeckController *optDeckController = [[IIViewDeckController alloc] initWithCenterViewController:thrdViewController rightViewController:rightController];
    //optDeckController.navigationControllerBehavior = IIViewDeckNavigationControllerIntegrated;
    [self.navigationController pushViewController:optDeckController animated:YES];
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
