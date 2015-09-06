//
//  SendViewController.h
//  VideoReceiverPlayerDemo
//
//  Created by alex  on 9/5/15.
//  Copyright (c) 2015 cn.edu.scnu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import "ViewController.h"

@interface SendViewController : UIViewController <ViewControllerDelegate>

@property (retain, nonatomic) IBOutlet UIView *previewView;
- (IBAction)connect:(id)sender;
- (IBAction)goBack:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *connectBt;

@end
