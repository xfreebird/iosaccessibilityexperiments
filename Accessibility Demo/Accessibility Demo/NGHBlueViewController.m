//
//  NGHBlueViewController.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/6/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "NGHBlueViewController.h"
#import "CustomView2.h"

@interface NGHBlueViewController ()
@property (weak, nonatomic) IBOutlet CustomView2 *customView;
@property (weak, nonatomic) IBOutlet CustomView2 *customView2;
@property (weak, nonatomic) IBOutlet UISlider *uislider;
@property (weak, nonatomic) IBOutlet UISlider *uislider2;

@end

@implementation NGHBlueViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
        
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification,
                                    self.view);

}


- (IBAction)sliderValueChanged:(id)sender {
    [self updateSliderAccessibilityLabel:1];
}

- (IBAction)sliderValueChanged2:(id)sender {
    [self updateSliderAccessibilityLabel:2];
}

- (void)updateSliderAccessibilityLabel:(NSInteger)index
{
    NSString *string = @"";
    NSInteger value = (index == 1) ? self.uislider.value : self.uislider2.value;
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
    
    if (index == 1) {
        [self.uislider setAccessibilityValue:string];
    } else {
        [self.uislider2 setAccessibilityValue:string];
    }
    
}

@end
