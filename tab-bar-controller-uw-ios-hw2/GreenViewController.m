//
//  GreenViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/23/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "GreenViewController.h"

@interface GreenViewController ()

@property (weak, nonatomic) IBOutlet UITextField *presentCount;

@end


@implementation GreenViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void) viewDidAppear:(BOOL)animated
{
    self.presentCount.text = [NSString stringWithFormat:@"%d", self.presentCountVal];
}

- (IBAction)dismissDidTap:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}

@end
