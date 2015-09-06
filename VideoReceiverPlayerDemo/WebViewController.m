//
//  WebViewController.m
//  VideoReceiverPlayerDemo
//
//  Created by alex  on 9/5/15.
//  Copyright (c) 2015 cn.edu.scnu. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController (){
    NSString *address;
}

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:address];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    self.webView.delegate = self;
    [self.webView loadRequest:request];
    self.webView.scalesPageToFit = YES;
    // Do any additional setup after loading the view.
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

- (void)webViewDidStartLoad:(UIWebView *)webView{

}
- (void)webViewDidFinishLoad:(UIWebView *)webView{

}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"Error:%@",error);
}

- (void) sendIP:(NSString *) ip stream:(NSString *) stream{
    address = ip;
}


- (IBAction)refreshWeb:(id)sender {
    [self.webView reload];
}

- (IBAction)popWebControllerView:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
