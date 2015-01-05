//
//  SCOrderHistoryListViewController.m
//  SpeedClean
//
//  Created by Pradeep on 05/01/15.
//  Copyright (c) 2015 Tarento Technologies. All rights reserved.
//

#import "SCOrderHistoryListViewController.h"
#import "UIViewController+ECSlidingViewController.h"

@interface SCOrderHistoryListViewController ()
@property(nonatomic, strong)
UIPanGestureRecognizer *dynamicTransitionPanGesture;
@end

@implementation SCOrderHistoryListViewController

#pragma mark - UIViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.view
     removeGestureRecognizer:self.dynamicTransitionPanGesture];
    [self.navigationController.view
     addGestureRecognizer:self.slidingViewController.panGesture];
}

#pragma mark - IBActions

- (IBAction)menuButtonTapped:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}

@end