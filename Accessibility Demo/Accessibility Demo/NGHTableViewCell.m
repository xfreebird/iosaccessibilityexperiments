//
//  NGHTableViewCell.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/6/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "NGHTableViewCell.h"

@implementation NGHTableViewCell


- (NSString *)accessibilityLabel
{
    return @"MyCustomCellAccessibilityLabel";
}


- (NSString *)accessibilityHint
{
    return @"MyCustomCellAccessibilityHint";
}


@end
