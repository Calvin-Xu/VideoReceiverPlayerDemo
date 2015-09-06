//
//  SendViewController.m
//  VideoReceiverPlayerDemo
//
//  Created by alex  on 9/5/15.
//  Copyright (c) 2015 cn.edu.scnu. All rights reserved.
//

#import "SendViewController.h"
#import "VCSimpleSession.h"

@interface SendViewController () <VCSessionDelegate>{
    NSString *address;
    NSString *_stream;
}
@property (nonatomic, retain) VCSimpleSession* session;
@end

@implementation SendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _session = [[VCSimpleSession alloc] initWithVideoSize:CGSizeMake(1280, 720) frameRate:30 bitrate:1000000 useInterfaceOrientation:NO];
    [self.previewView addSubview:_session.previewView];
    _session.previewView.frame = self.previewView.bounds;
    _session.delegate = self;
//    // Do any additional setup after loading the view.
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

- (IBAction)connect:(id)sender {
    switch(_session.rtmpSessionState) {
        case VCSessionStateNone:
        case VCSessionStatePreviewStarted:
        case VCSessionStateEnded:
        case VCSessionStateError:
            [_session startRtmpSessionWithURL:address andStreamKey:_stream];
            break;
        default:
            [_session endRtmpSession];
            break;
    }
}

- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) connectionStatusChanged:(VCSessionState) state
{
    switch(state) {
        case VCSessionStateStarting:
           [self.connectBt setTitle:@"connecting..."];
            break;
        case VCSessionStateStarted:
           [self.connectBt setTitle:@"Successfully"];
            break;
        default:
            
            break;
    }
}

- (void) sendIP:(NSString *) ip stream:(NSString *) stream{
    address = ip;
    _stream =stream;
}


@end
