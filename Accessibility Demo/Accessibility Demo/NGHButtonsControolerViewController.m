//
//  NGHButtonsControolerViewController.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/12/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "NGHButtonsControolerViewController.h"

@interface NGHButtonsControolerViewController ()
@property (weak, nonatomic) IBOutlet UIButton *defaultButton;
@property (weak, nonatomic) IBOutlet UIButton *customButton;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;

@end

@implementation NGHButtonsControolerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.customButton.accessibilityLabel = @"My awesome button";
    self.imageButton.accessibilityLabel = @"My flips";
    self.imageButton.accessibilityHint = @"Double Tap to be cool";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
