//
//  NGHRedViewController.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/6/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "NGHRedViewController.h"

@interface NGHRedViewController ()
@property (weak, nonatomic) IBOutlet UISlider *uislider;

@end

@implementation NGHRedViewController

- (IBAction)sliderValueChanged:(id)sender {
    [self updateSliderAccessibilityLabel];
}


- (void)updateSliderAccessibilityLabel
{
    NSString *string = @"";
    NSInteger value = self.uislider.value;
    switch (value) {
        case 0:
            string = @"cold";
            break;
            
        case 1:
            string = @"ok";
            break;
            
        case 2:
            string = @"hot";
            break;
            
        default:
            break;
    }
    
    [self.uislider setAccessibilityValue:string];
    
}

@end
