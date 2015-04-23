//
//  DataViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/20/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "AppDelegate.h"
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
    
}

- (void)viewDidAppear:(BOOL)animated;
{
    AppDelegate *dG = [UIApplication sharedApplication].delegate;
    self.redCountDisplay.text = [NSString stringWithFormat:@"%d", dG.colorCounter.redCount];
}

- (IBAction)resetCounts:(id)sender {
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"Count Reset"
                                                                message:@"Reset All Color Counts?"
                                                         preferredStyle:UIAlertControllerStyleActionSheet];
    
    [ac addAction:[UIAlertAction actionWithTitle:@"Reset"
                                           style:UIAlertActionStyleDestructive
                                         handler:nil]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                           style:UIAlertActionStyleCancel
                                         handler:nil]];
    
    [self presentViewController:ac animated:YES completion:nil];
    
}

@end
