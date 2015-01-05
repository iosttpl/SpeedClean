//
//  SCMenuViewController.h
//  SpeedClean
//
//  Created by Pradeep on 05/01/15.
//  Copyright (c) 2015 Tarento Technologies. All rights reserved.
//

/*!
 @discussion Menu view controller

 ## Version information

 __Version__: 1.0

 __Found__: 01/05/2015

 __Last update__: 01/05/2015

 __Developer__: Pradeep, Tarento Technologies Pvt Ltd.

 */

#import <UIKit/UIKit.h>

@interface SCMenuViewController : UIViewController <UITableViewDataSource>
@property(weak, nonatomic) IBOutlet UITableView *tableView;

@end
