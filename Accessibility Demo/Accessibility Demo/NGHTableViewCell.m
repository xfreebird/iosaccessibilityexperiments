//
//  NGHTableViewCell.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/6/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "NGHTableViewCell.h"

@implementation NGHTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (NSString *)accessibilityLabel
{
    return @"MyCustomCellLabel";
}


- (NSString *)accessibilityHint
{
    return @"MyCustomCellHint";
}


@end
