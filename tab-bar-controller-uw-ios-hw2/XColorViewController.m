//
//  XColorViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/24/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "XColorViewController.h"
#import "UIColor+UWExtensions.h"

@interface XColorViewController ()

@end

@implementation XColorViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor uw_randomColor];
    
}


- (IBAction)punkDidTap:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}


@end
