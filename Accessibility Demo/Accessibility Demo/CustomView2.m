//
//  CustomView2.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/7/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "CustomView2.h"

@implementation CustomView2

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        
        self.backgroundColor          = [UIColor clearColor];
        _customView        = [[[NSBundle mainBundle] loadNibNamed:@"CustomView2" owner:self options:nil] lastObject];
        _customView.frame  = self.bounds;
        
        self.disableDefaultTrait = NO;
        
        [self addSubview:_customView];
        
        
    }
    
    return self;
}
- (IBAction)incerementValue:(id)sender {
    self.value++;
    self.valueLabel.text = [NSString stringWithFormat:@"%d",self.value];
    
    [self setAccessibilityValue:self.valueLabel.text];

}

- (IBAction)decrementValue:(id)sender {
    self.value--;
    self.valueLabel.text = [NSString stringWithFormat:@"%d",self.value];
    
    [self setAccessibilityValue:self.valueLabel.text];
}

- (UIAccessibilityTraits)accessibilityTraits
{
    return UIAccessibilityTraitAdjustable;
}

- (void)accessibilityDecrement
{
    [self decrementValue:nil];
}

- (void)accessibilityIncrement
{
    [self incerementValue:nil];

}

@end
