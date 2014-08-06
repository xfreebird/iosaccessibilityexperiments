//
//  CustomView.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/7/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        
        self.backgroundColor          = [UIColor clearColor];
        _customView        = [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil] lastObject];
        _customView.frame  = self.bounds;
        
        [self addSubview:_customView];

        
    }
    
    return self;
}

- (NSString *)accessibilityLabel
{
    return @"custom view accessibility label";
}

- (UIAccessibilityTraits)accessibilityTraits
{
    return UIAccessibilityTraitButton;
}

@end
