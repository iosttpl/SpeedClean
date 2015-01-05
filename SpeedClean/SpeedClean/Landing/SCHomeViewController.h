//
//  SCHomeViewController.h
//  SpeedClean
//
//  Created by Pradeep on 05/01/15.
//  Copyright (c) 2015 Tarento Technologies. All rights reserved.
//
/*!
 @discussion Home view controller

 ## Version information

 __Version__: 1.0

 __Found__: 01/05/2015

 __Last update__: 01/05/2015

 __Developer__: Pradeep, Tarento Technologies Pvt Ltd.

 */
#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"

@interface SCHomeViewController
    : UIViewController <ECSlidingViewControllerDelegate>
/*!
 @abstract Menu button tapped
 @discussion Button to show list of items on left hand side
 @param sender button action
 @return button action
 @since 1.0
 */
- (IBAction)menuButtonTapped:(id)sender;

@end
