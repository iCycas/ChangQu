//
//  ViewController.m
//  ChangQu
//
//  Created by NFJ on 13-4-13.
//  Copyright (c) 2013年 BC. All rights reserved.
//

#import "ViewController.h"
#import "BCTabBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   // [self.view addBCTabBar:1];
    BCTabBar *bcTabBar = [[BCTabBar alloc] initWithItem:BCTabBarItemMyRecord];
    [self.view addSubview:bcTabBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
