//
//  ColorCounter.m
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/21/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ColorCounter.h"

@implementation ColorCounter

-(instancetype) init;
{

    self = [super init];
    
    if (self)
    {
        [self resetCounts];
    }
    
    return self;
    
}

-(void) resetCounts;
{
    self.redCount = 0;
    self.greenCount = 0;
    self.blueCount = 0;
}

@end
