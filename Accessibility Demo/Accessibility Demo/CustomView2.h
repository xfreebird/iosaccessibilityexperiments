//
//  CustomView2.h
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/7/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView2 : UIView
@property (strong, nonatomic) UIView *customView;
@property (weak, nonatomic) IBOutlet UIButton *incrementButton;
@property (weak, nonatomic) IBOutlet UIButton *decrementButton;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (assign, nonatomic) NSInteger value;
@end
