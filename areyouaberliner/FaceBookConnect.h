//
//  FaceBookConnect.h
//  areyouaberliner
//
//  Created by colman on 02.05.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface FaceBookConnect : NSObject {
    
}


- (BOOL)openSessionWithAllowLoginUI:(BOOL)allowLoginUI;
- (void) performPublishAction:(void (^)(void)) action ;
@end




//- (void) performPublishAction:(void (^)(void)) action {
//    // we defer request for permission to post to the moment of post, then we check for the permission
//    if ([FBSession.activeSession.permissions indexOfObject:@"publish_actions"] == NSNotFound) {
//        // if we don't already have the permission, then we request it now
//        [FBSession.activeSession requestNewPublishPermissions:@[@"publish_actions"]
//                                              defaultAudience:FBSessionDefaultAudienceFriends
//                                            completionHandler:^(FBSession *session, NSError *error) {
//                                                if (!error) {
//                                                    NSLog(@"was there no error?");
//                                                    action();
//                                                }
//                                                //For this example, ignore errors (such as if user cancels).
//                                            }];
//    } else {
//        action();
//    }
//
//}
//
///*
// * Callback for session changes.
// */
//- (void)sessionStateChanged:(FBSession *)session
//                      state:(FBSessionState) state
//                      error:(NSError *)error
//{
//    switch (state) {
//        case FBSessionStateOpen:
//            if (!error) {
//                // We have a valid session
//                NSLog(@"User session found");
//            }
//            break;
//        case FBSessionStateClosed:
//        case FBSessionStateClosedLoginFailed:
//            [FBSession.activeSession closeAndClearTokenInformation];
//            break;
//        default:
//            break;
//    }
//
//    [[NSNotificationCenter defaultCenter]
//     postNotificationName:FBSessionStateChangedNotification
//     object:session];
//
//    if (error) {
//        UIAlertView *alertView = [[UIAlertView alloc]
//                                  initWithTitle:@"Error"
//                                  message:error.localizedDescription
//                                  delegate:nil
//                                  cancelButtonTitle:@"OK"
//                                  otherButtonTitles:nil];
//        [alertView show];
//    }
//}
//
///*
// * Opens a Facebook session and optionally shows the login UX.
// */
//- (BOOL)openSessionWithAllowLoginUI:(BOOL)allowLoginUI {
//    NSArray *permissions = [[NSArray alloc] initWithObjects:
//                            @"email",
//                            @"user_likes",
//                            nil];
//
//    return [FBSession openActiveSessionWithReadPermissions:permissions
//                                              allowLoginUI:allowLoginUI
//                                         completionHandler:^(FBSession *session,
//                                                             FBSessionState state,
//                                                             NSError *error) {
//                                             [self sessionStateChanged:session
//                                                                 state:state
//                                                                 error:error];
//                                         }];
//}
