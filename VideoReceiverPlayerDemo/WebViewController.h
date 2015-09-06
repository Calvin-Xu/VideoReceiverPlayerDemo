//
//  WebViewController.h
//  VideoReceiverPlayerDemo
//
//  Created by alex  on 9/5/15.
//  Copyright (c) 2015 cn.edu.scnu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface WebViewController : UIViewController <UIWebViewDelegate, ViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)refreshWeb:(id)sender;
- (IBAction)popWebControllerView:(id)sender;


@end
