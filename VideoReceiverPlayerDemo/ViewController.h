//
//  ViewController.h
//  VideoReceiverPlayerDemo
//
//  Created by alex  on 9/5/15.
//  Copyright (c) 2015 cn.edu.scnu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewControllerDelegate <NSObject>

@required

- (void) sendIP:(NSString *) ip stream:(NSString *) stream;

@end

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *ipAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *streamTextField;

@property (nonatomic,retain) id <ViewControllerDelegate> delegate;

@end

