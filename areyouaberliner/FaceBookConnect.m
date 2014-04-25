//
//  FaceBookConnect.m
//  areyouaberliner
//
//  Created by colman on 02.05.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import "FaceBookConnect.h"

@implementation FaceBookConnect 


# pragma mark Facebook Share Testing

- (IBAction)publishStory:(id)sender
{
    if (FBSession.activeSession.isOpen) {
        //Make you request
        [self performPublishAction:^{
            NSLog(@"trying to make comment public");
            // otherwise fall back on a request for permissions and a direct post
            NSString *message = [NSString stringWithFormat:@"Your msg is"];
            
            [FBRequestConnection startForPostStatusUpdate:message
                                        completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                                            if (error) {
                                                
                                                NSLog(@"didn't send, with error code %i", error.code);
                                            }
                                            
                                        }];
            
        }];
        
    }else{
        //Reopen your session
        [FBSession openActiveSessionWithPublishPermissions:[NSArray arrayWithObjects:@"publish_actions",
                                                            nil] defaultAudience:FBSessionDefaultAudienceEveryone allowLoginUI:YES completionHandler:^(FBSession *session,
                                                                                                                                                       FBSessionState state, NSError *error) {
            if (FBSession.activeSession.isOpen && !error) {
                NSLog(@"should be allowed");
            }}];
    }
}



- (void) performPublishAction:(void (^)(void)) action {
    // we defer request for permission to post to the moment of post, then we check for the permission
    if ([FBSession.activeSession.permissions indexOfObject:@"publish_actions"] == NSNotFound) {
        // if we don't already have the permission, then we request it now
        [FBSession.activeSession requestNewPublishPermissions:@[@"publish_actions"]
                                              defaultAudience:FBSessionDefaultAudienceFriends
                                            completionHandler:^(FBSession *session, NSError *error) {
                                                if (!error) {
                                                    NSLog(@"was there no error?");
                                                    action();
                                                }
                                                //For this example, ignore errors (such as if user cancels).
                                            }];
    } else {
        action();
    }
    
}

/*
 * Callback for session changes.
 */
- (void)sessionStateChanged:(FBSession *)session
                      state:(FBSessionState) state
                      error:(NSError *)error
{
    switch (state) {
        case FBSessionStateOpen:
            if (!error) {
                // We have a valid session
                NSLog(@"User session found");
            }
            break;
        case FBSessionStateClosed:
        case FBSessionStateClosedLoginFailed:
            [FBSession.activeSession closeAndClearTokenInformation];
            break;
        default:
            break;
    }
    
    [[NSNotificationCenter defaultCenter]
     postNotificationName:FBSessionStateChangedNotification
     object:session];
    
    if (error) {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Error"
                                  message:error.localizedDescription
                                  delegate:nil
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
}

/*
 * Opens a Facebook session and optionally shows the login UX.
 */
- (BOOL)openSessionWithAllowLoginUI:(BOOL)allowLoginUI {
    NSArray *permissions = [[NSArray alloc] initWithObjects:
                            @"email",
                            @"user_likes",
                            nil];
    
    return [FBSession openActiveSessionWithReadPermissions:permissions
                                              allowLoginUI:allowLoginUI
                                         completionHandler:^(FBSession *session,
                                                             FBSessionState state,
                                                             NSError *error) {
                                             [self sessionStateChanged:session
                                                                 state:state
                                                                 error:error];
                                         }];
}

@end
