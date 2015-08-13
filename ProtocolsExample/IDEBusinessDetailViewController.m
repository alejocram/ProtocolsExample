//
//  IDEBusinessDetailViewController.m
//  MVCExample01
//
//  Created by Alejocram on 1/08/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import "IDEBusinessDetailViewController.h"
#import "IDEWebBusinessViewController.h"

@interface IDEBusinessDetailViewController ()

@end

@implementation IDEBusinessDetailViewController

-(id)initWithModel:(IDEBusiness *)model{
    
    if(self = [super init]){
        _model = model;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.model = [IDEBusiness businessWithName:@"Restaurante iOS" details:@"Restaurante en la sede oficial de Apple, donde los empleados puede comer, almorzar, y tomar." rating:3 category:@"Restaurante" webPage:[NSURL URLWithString:@"http://www.ideaslab.com.co"] image:[UIImage imageNamed:@"ideaslab-logo850"]];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self syncModelWithView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using
    ((IDEWebBusinessViewController *) segue.destinationViewController).model = self.model;
    // Pass the selected object to the new view controller.
}


- (IBAction)showWebPage:(id)sender {
    NSLog(@"Sitio web %@", self.model.webPage);
}

- (void)syncModelWithView{
    self.name.text = self.model.name;
    self.details.text = self.model.details;
    self.rating.text = [NSString stringWithFormat:@"%d", self.model.rating];
    self.category.text = self.model.category;
    self.image.image = self.model.image;
}
@end
