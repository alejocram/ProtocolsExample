//
//  IDEBusinessTableViewController.h
//  ProtocolsExample
//
//  Created by RutaN-Mac2 on 12/08/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "IDEBusinessDetailViewController.h"

@interface IDEBusinessTableViewController : UITableViewController<UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *businesses;
@property (nonatomic, strong) IDEBusiness *businessSelected;

@end
