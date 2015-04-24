//
//  ColorCounter.h
//  tab-bar-controller-uw-ios-hw2
//
//  Created by Parker, Carl (HBO) on 4/21/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorCounter : NSObject

@property  (nonatomic) int redCount;
@property  (nonatomic) int greenCount;
@property  (nonatomic) int blueCount;

-(void) resetCounts;

@end
