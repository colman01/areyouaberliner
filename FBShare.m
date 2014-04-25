//
//  FBShare.m
//  areyouaberliner
//
//  Created by colman on 07.04.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import "FBShare.h"

@implementation FBShare



-(id) init {
    // FBSample logic
    // if the session is open, then load the data for our view controller
    if (!FBSession.activeSession.isOpen) {
        // if the session is closed, then we open it here, and establish a handler for state changes
        [FBSession.activeSession openWithCompletionHandler:^(FBSession *session,
                                                             FBSessionState state,
                                                             NSError *error) {
            switch (state) {
                case FBSessionStateClosedLoginFailed:
                {
                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                        message:error.localizedDescription
                                                                       delegate:nil
                                                              cancelButtonTitle:@"OK"
                                                              otherButtonTitles:nil];
                    [alertView show];
                }
                    NSLog(@"inside!");
                    break;
                default:
                    break;
            }
        }];
    }
}
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    // FBSample logic
//    // if the session is open, then load the data for our view controller
//    if (!FBSession.activeSession.isOpen) {
//        // if the session is closed, then we open it here, and establish a handler for state changes
//        [FBSession.activeSession openWithCompletionHandler:^(FBSession *session,
//                                                             FBSessionState state,
//                                                             NSError *error) {
//            switch (state) {
//                case FBSessionStateClosedLoginFailed:
//                {
//                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
//                                                                        message:error.localizedDescription
//                                                                       delegate:nil
//                                                              cancelButtonTitle:@"OK"
//                                                              otherButtonTitles:nil];
//                    [alertView show];
//                }
//                    break;
//                default:
//                    break;
//            }
//        }];
//    }
//}

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}

 
 */

@end
