//
//  IDEBusinessDetailViewController.h
//  MVCExample01
//
//  Created by Alejocram on 1/08/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IDEBusiness.h"

@interface IDEBusinessDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UITextView *details;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *webPage;

@property (strong, nonatomic) IDEBusiness *model;

- (IBAction)showWebPage:(id)sender;

-(id)initWithModel:(IDEBusiness *)model;
@end
