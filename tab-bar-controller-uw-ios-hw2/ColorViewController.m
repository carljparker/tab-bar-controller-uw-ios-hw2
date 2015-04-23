//
//  ColorViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/20/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "AppDelegate.h"
#import "ColorViewController.h"
#import "RedViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

- (instancetype) init;
{
    self = [super init];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"colors"];
        self.tabBarItem.title = @"Color";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)redDidTap:(id)sender {
    
    AppDelegate *dG = [UIApplication sharedApplication].delegate;
    
    dG.colorCounter.redCount++;
    
    RedViewController *redVC = [[RedViewController alloc] init];
    
    redVC.presentCountVal = dG.colorCounter.redCount;
    
    [self presentViewController:redVC
                       animated:YES
                     completion:nil];
}



@end
