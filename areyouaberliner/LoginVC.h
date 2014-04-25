//
//  LoginVC.h
//  areyouaberliner
//
//  Created by colman on 24.04.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginVC : UIViewController {
    
    
    IBOutlet UITextField * usernameLogin;
    IBOutlet UITextField * passwordLogin;
    
    IBOutlet UIButton * loginBtn;
    IBOutlet UIButton * loginCancel;
    
    
    IBOutlet UITextField * usernameReg;
    IBOutlet UITextField * email;
    IBOutlet UITextField * passwordReg;
    
    IBOutlet UIButton * regBtn;
    IBOutlet UIButton * regCancel;
    
    
    
    
    
}


-(IBAction)Login :(id)sender;



@end
