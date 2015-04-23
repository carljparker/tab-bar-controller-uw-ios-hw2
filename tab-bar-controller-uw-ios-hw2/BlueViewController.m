//
//  GreenViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/23/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "GreenViewController.h"

@interface GreenViewController ()

@end

@implementation GreenViewController


@implementation GreenViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void) viewDidAppear:(BOOL)animated
{
    self.presentCount.text = [NSString stringWithFormat:@"%d", self.presentCountVal];
}


@end
