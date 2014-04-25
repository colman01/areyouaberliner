//
//  AppDelegate.h
//  areyouaberliner
//
//  Created by colman on 25.02.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) FBSession *session;

extern NSString *const FBSessionStateChangedNotification;




- (BOOL)openSessionWithAllowLoginUI:(BOOL)allowLoginUI;


@end
