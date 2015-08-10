//
//  IDEWebBusinessViewController.h
//  MVCExample01
//
//  Created by Alejocram on 1/08/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IDEBusiness.h"

@interface IDEWebBusinessViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *browser;

@property (strong, nonatomic) IDEBusiness *model;
@end
