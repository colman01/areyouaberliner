//
//  LoginVC.m
//  areyouaberliner
//
//  Created by colman on 24.04.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)Login :(id)sender {
    
    NSLog(@"pressed");
}

@end
