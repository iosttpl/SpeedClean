//
//  SCMenuViewController.m
//  SpeedClean
//
//  Created by Pradeep on 05/01/15.
//  Copyright (c) 2015 Tarento Technologies. All rights reserved.
//

#import "SCMenuViewController.h"

#import "UIViewController+ECSlidingViewController.h"

@interface SCMenuViewController ()
@property(nonatomic, strong) NSArray *menuItems;
@property(nonatomic, strong)
    UINavigationController *transitionsNavigationController;
@end

@implementation SCMenuViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // topViewController is the transitions navigation controller at this point.
  // It is initially set as a User Defined Runtime Attributes in storyboards.
  // We keep a reference to this instance so that we can go back to it without
  // losing its state.
  self.transitionsNavigationController =
      (UINavigationController *)self.slidingViewController.topViewController;
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  [self.view endEditing:YES];
}

#pragma mark - Properties

- (NSArray *)menuItems {
  if (_menuItems)
    return _menuItems;

  _menuItems = @[ @"NEW ORDER", @"ORDER HISTORY", @"ADDRESS", @"PRICING LIST" ];

  return _menuItems;
}

- (NSString *)getHeaderTitle {
  return @"Speed Clean";
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView
    numberOfRowsInSection:(NSInteger)section {
  return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *CellIdentifier = @"MenuCell";
  UITableViewCell *cell =
      [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

  NSString *menuItem = self.menuItems[indexPath.row];

  cell.textLabel.text = menuItem;
  [cell setBackgroundColor:[UIColor clearColor]];

  return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  //  NSString *menuItem = self.menuItems[indexPath.row];
  self.slidingViewController.topViewController.view.layer.transform =
      CATransform3DMakeScale(1, 1, 1);
  switch (indexPath.row) {
  case 0:
    self.slidingViewController.topViewController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"HomeNavigationController"];
    break;
  case 1:
    self.slidingViewController.topViewController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"OrderHistoryViewController"];
    break;
  case 2:
    self.slidingViewController.topViewController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"AddressViewController"];
    break;
  case 3:
    self.slidingViewController.topViewController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"PricingViewController"];
    break;

  default:
    break;
  }
  [self.slidingViewController resetTopViewAnimated:YES];
}

@end
