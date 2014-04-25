//
//  login.m
//  areyouaberliner
//
//  Created by colman on 24.04.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import "login.h"
#import "ASIFormDataRequest.h"

@implementation login


NSString * localLogin = @"http://192.168.0.105/old-car-website--master/account_login_action.php";

-(void) getData {
    NSURL *url = [NSURL URLWithString:localLogin];
    
    ASIFormDataRequest * r = [ASIFormDataRequest requestWithURL:url];
    [r setPostValue:@"colman01@gmail.com" forKey:@"email"];
    [r setPostValue:@"1234" forKey:@"password"];
    [r startSynchronous];
    
//    results = [[NSMutableArray alloc] init];
    
    if ([[r responseString] length] > 2) {
        NSString * input = [r responseString];
//        NSString * res = [self grabData:input];
    }
    else{
//        nameLabel.text = @" ";
//        codeLabel.text = @" ";
    }
    
    NSLog(@"%@", [r responseString]);
    
}

@end
