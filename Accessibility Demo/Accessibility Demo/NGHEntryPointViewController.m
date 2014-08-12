//
//  NGHEntryPointViewController.m
//  Accessibility Demo
//
//  Created by Nicolae Ghimbovschi on 8/6/14.
//  Copyright (c) 2014 Nicu. All rights reserved.
//

#import "NGHEntryPointViewController.h"

#import "NGHRedViewController.h"
#import "NGHYellowTableViewController.h"
#import "NGHBlueViewController.h"
#import "NGHButtonsControolerViewController.h"

@interface NGHEntryPointViewController ()

@end

@implementation NGHEntryPointViewController

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
    
    UIViewController *viewController = [NGHRedViewController new];

    UITabBarItem *barItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    viewController.tabBarItem = barItem;
    
    UIViewController *viewController2 = [NGHYellowTableViewController new];
    
    barItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    viewController2.tabBarItem = barItem;


    UIViewController *viewController3 = [NGHBlueViewController new];
    
    barItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2];
    viewController3.tabBarItem = barItem;


    UIViewController *viewController4 = [NGHButtonsControolerViewController new];
    
    barItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:2];
    viewController4.tabBarItem = barItem;

    
    self.viewControllers = @[viewController4, viewController, viewController2, viewController3];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
