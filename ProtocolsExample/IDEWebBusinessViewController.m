//
//  IDEWebBusinessViewController.m
//  MVCExample01
//
//  Created by Alejocram on 1/08/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import "IDEWebBusinessViewController.h"
#import "IDEBusiness.h"

@interface IDEWebBusinessViewController ()

@end

@implementation IDEWebBusinessViewController

//- (id)initWithModel:(IDEBusiness *)model
//{
//    if (self = [super initWithNibName:nil bundle:nil]) {
//        _model = model;
//        self.title = @"Web";
//    }
//    
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self syncViewToModel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
}

- (void)syncViewToModel
{
    self.title = self.model.name;
    self.browser.delegate = self;
    [self.browser loadRequest:[NSURLRequest requestWithURL:self.model.webPage]];
}

@end
