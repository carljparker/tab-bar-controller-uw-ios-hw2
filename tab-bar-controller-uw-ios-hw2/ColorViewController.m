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
#import "GreenViewController.h"
#import "BlueViewController.h"
#import "XColorViewController.h"

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
    
    AppDelegate *aD = [UIApplication sharedApplication].delegate;
    
    aD.colorCounter.redCount++;
    
    RedViewController *redVC = [[RedViewController alloc] init];
    
    redVC.presentCountVal = aD.colorCounter.redCount;
    
    [self presentViewController:redVC
                       animated:YES
                     completion:nil];
}

- (IBAction)greenDidTap:(id)sender {
    
    
    AppDelegate *aD = [UIApplication sharedApplication].delegate;
    
    aD.colorCounter.greenCount++;
    
    GreenViewController *greenVC = [[GreenViewController alloc] init];
    
    greenVC.presentCountVal = aD.colorCounter.greenCount;
    
    [self presentViewController:greenVC
                       animated:YES
                     completion:nil];
}


- (IBAction)blueDidTap:(id)sender {
    
    
    AppDelegate *aD = [UIApplication sharedApplication].delegate;
    
    aD.colorCounter.blueCount++;
    
    BlueViewController *blueVC = [[BlueViewController alloc] init];
    
    blueVC.presentCountVal = aD.colorCounter.blueCount;
    
    [self presentViewController:blueVC
                       animated:YES
                     completion:nil];
}


- (IBAction)punkDidTap:(id)sender {

    XColorViewController *xVC = [[XColorViewController alloc] init];
    
    [self presentViewController:xVC
                       animated:YES
                     completion:nil];

    
}

@end
