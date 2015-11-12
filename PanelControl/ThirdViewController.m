//
//  ThirdViewController.m
//  PanelControl
//
//  Created by Sandeep Reddy Dega on 25/09/15.
//  Copyright © 2015 Sandeep Reddy Dega. All rights reserved.
//

#import "ThirdViewController.h"
#import "IIViewDeckController.h"
#import "RightViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"RR" style:UIBarButtonItemStylePlain target:self.viewDeckController action:@selector(toggleRightView)];
    // Do any additional setup after loading the view.
    
    // Implemented tap gesture for recognizing view is active or not.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    [tap addTarget:self action:@selector(tapAction:)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)tapAction:(id)sender {
    NSLog(@"Tap action performed");
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
