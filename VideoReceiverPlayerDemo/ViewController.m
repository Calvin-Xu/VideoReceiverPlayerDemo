//
//  ViewController.m
//  VideoReceiverPlayerDemo
//
//  Created by alex  on 9/5/15.
//  Copyright (c) 2015 cn.edu.scnu. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
#import "SendViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// http://192.168.1.105:1935/live/myStream/playlist.m3u8
// rtmp://192.168.4.90/live" andStreamKey:@"myStream"
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSString *ipAddress;
    NSLog(@"identifier:%@",segue.identifier);
    if ([[segue identifier] isEqualToString:@"webViewController"]) {
        ipAddress = [NSString stringWithFormat:@"http://%@/live/%@/playlist.m3u8",_ipAddressTextField.text,_streamTextField.text];
        WebViewController *webController = [segue destinationViewController];
        self.delegate = webController;
        [self.delegate sendIP:ipAddress stream:nil];
    }else{
        ipAddress = [NSString stringWithFormat:@"rtmp://%@/live",_ipAddressTextField.text];
        SendViewController *sendController = [segue destinationViewController];
        self.delegate = sendController;
        [self.delegate sendIP:ipAddress stream:_streamTextField.text];
    }
    
}

@end
