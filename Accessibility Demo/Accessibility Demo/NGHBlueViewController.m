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

@end
