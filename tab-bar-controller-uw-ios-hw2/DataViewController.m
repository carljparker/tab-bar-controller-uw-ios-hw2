//
//  DataViewController.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/20/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "AppDelegate.h"
#import "ColorCounter.h"
#import "DataViewController.h"

@interface DataViewController ()

@property (weak, nonatomic) IBOutlet UITextField *redCountDisplay;

@property (weak, nonatomic) IBOutlet UITextField *greenCountDisplay;

@property (weak, nonatomic) IBOutlet UITextField *blueCountDisplay;

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

- (void) updateColorCounts:(ColorCounter *) counter;
{

    self.redCountDisplay.text   = [NSString stringWithFormat:@"%d", counter.redCount];
    self.greenCountDisplay.text = [NSString stringWithFormat:@"%d", counter.greenCount];
    self.blueCountDisplay.text  = [NSString stringWithFormat:@"%d", counter.blueCount];
    
}

- (void)viewDidAppear:(BOOL)animated;
{

    // initialize all the displayed counts
    AppDelegate *dG = [UIApplication sharedApplication].delegate;

    [self updateColorCounts:dG.colorCounter];

}

- (IBAction)resetCounts:(id)sender {
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"Count Reset"
                                                                message:@"Reset All Color Counts?"
                                                         preferredStyle:UIAlertControllerStyleActionSheet];
    
    [ac addAction:[UIAlertAction actionWithTitle:@"Reset"
                                           style:UIAlertActionStyleDestructive
                                         handler:^(UIAlertAction *action) {
                                             
                                             AppDelegate *dG = [UIApplication sharedApplication].delegate;
                                             [dG.colorCounter resetCounts];
                                             [self updateColorCounts:dG.colorCounter];

                                         }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                           style:UIAlertActionStyleCancel
                                         handler:nil]];
    
    [self presentViewController:ac animated:YES completion:nil];
    
}

@end
