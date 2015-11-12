//
//  ViewController.m
//  PanelControl
//
//  Created by Sandeep Reddy Dega on 24/09/15.
//  Copyright © 2015 Sandeep Reddy Dega. All rights reserved.
//

#import "ViewController.h"
#import "IIViewDeckController.h"
#import "SecondViewController.h"
#import "RightViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    UIButton *nxtBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    nxtBtn.frame = CGRectMake(150, 200, 150, 35);
    [nxtBtn setTitle:@"Next" forState:UIControlStateNormal];
    [nxtBtn addTarget:self action:@selector(nxtBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nxtBtn];
}

- (void)nxtBtnAction:(id)sender {
    IIViewDeckController *deckController =  [self generateControllerStack];
    [self.navigationController pushViewController:deckController animated:YES];

}


- (IIViewDeckController*)generateControllerStack {
    RightViewController* rightController = [[RightViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    SecondViewController *secondController = [[SecondViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    IIViewDeckController* deckController =  [[IIViewDeckController alloc] initWithCenterViewController:secondController
                                                                                    leftViewController:nil
                                                                                   rightViewController:rightController];
    deckController.rightSize = 100;
    
    // Please see the below comment
    
    /* If add navigation behaviour it will work fine orther wise it is not showing second view controller background color (I set the background color as blue color but it is showing yellow color which was set to the right panel controller) */
    
   // deckController.navigationControllerBehavior = IIViewDeckNavigationControllerIntegrated;
    
    [deckController disablePanOverViewsOfClass:NSClassFromString(@"_UITableViewHeaderFooterContentView")];
    return deckController;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
