//
//  RedViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/21/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()

@property (weak, nonatomic) IBOutlet UITextField *presentCount;

@end

@implementation RedViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
}

- (void) viewDidAppear:(BOOL)animated
{
    self.presentCount.text = [NSString stringWithFormat:@"%d", self.presentCountVal];
}


- (IBAction)dismissDidTap:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
}


@end
