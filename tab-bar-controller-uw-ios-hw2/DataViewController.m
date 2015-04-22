//
//  DataViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/20/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@property (weak, nonatomic) IBOutlet UITextField *redCountDisplay;

@end

@implementation DataViewController

- (instancetype) init;
{
    self = [super init];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"data"];
        self.tabBarItem.title = @"Data";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redCount = @"1";
    
    self.redCountDisplay.text = self.redCount;
    
}


@end
