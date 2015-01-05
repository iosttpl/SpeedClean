//
//  SCLoginViewController.m
//  SpeedClean
//
//  Created by Pradeep on 05/01/15.
//  Copyright (c) 2015 Tarento Technologies. All rights reserved.
//

#import "SCLoginViewController.h"
#import "AppDelegate.h"
#import "UIImage+BlurredFrame.h"

@interface SCLoginViewController ()
@property(weak, nonatomic) IBOutlet UIButton *enterButton;
@property(weak, nonatomic) IBOutlet UITextField *mobileNumberField;
@property(weak, nonatomic) IBOutlet UIView *containerView;
@property(weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
- (IBAction)registerButtonClicked:(id)sender;

@end

@implementation SCLoginViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _enterButton.layer.cornerRadius = 5.0f;
  _mobileNumberField.layer.cornerRadius = 5.0f;
  //
  UIImage *image = [UIImage imageNamed:@"LoginBg"];
  CGRect frame = CGRectMake(0, 0, image.size.width, image.size.height);
  image = [image applyLightEffectAtFrame:frame];
  _backgroundImageView.image = image;
  // Do any additional setup after loading the view.
}

/**
 *  Login button action
 *
 *  @param sender button action to perform segue
 */
- (IBAction)registerButtonClicked:(id)sender {
  [self performSegueWithIdentifier:@"LandingView" sender:nil];
}

@end
