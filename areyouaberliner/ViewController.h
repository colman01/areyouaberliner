//
//  ViewController.h
//  areyouaberliner
//
//  Created by colman on 25.02.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerViewDelegate.h"
#import "ProgressAnimation.h"
#import "TextFieldData.h"
#import "CreateQuestions.h"
#import "ReadImages.h"
#import "AppDelegate.h"
#import "Buttons.h"
#import "FaceBookConnect.h"

//#import "GameView.h"
//#import "LoginVC.m"
#import <GameKit/GameKit.h>
//#import "GameCenterManager.h"



@class GADBannerView, GADRequest, GameCenterManager;

@interface ViewController : UIViewController
<GADBannerViewDelegate> {
    GADBannerView *adBanner_;
    
    IBOutlet UILabel * question;
    
    IBOutlet UIButton * option_one;
    IBOutlet UIButton * option_two;
    IBOutlet UIButton * option_three;
    IBOutlet UIButton * option_four;
    
    IBOutlet UIButton * joker_skip;
    IBOutlet UIButton * joker_stop;
    IBOutlet UIButton * joker_fold;

    IBOutlet UILabel * timerLabel;
    IBOutlet UILabel * currentScore;
    
    ProgressAnimation * box;
    TextFieldData * tfd;
    Question * question_;
    
    NSArray *one;
    NSArray *two;
    NSArray *three;
    NSArray *four;
    NSArray *questions;
    
    UIViewController * welcomeVC;
    UIViewController * restartVC;
    UIViewController * winningVC;
    UIViewController * achievementOneVC;
    
    Buttons * buttonsControl;
    IBOutlet UIImageView * achievementImageView;
    
    FaceBookConnect * fb;
    
    
    // game center
    
//    GameView * gameView;
    
    
    
}


@property (strong, nonatomic) Buttons * buttonsControl;
@property (strong, nonatomic) NSMutableDictionary *postParams;
@property (nonatomic, retain) GADBannerView *adBanner;

@property (nonatomic, retain) IBOutlet UILabel *question;

@property (nonatomic, retain) IBOutlet UIButton *option_one;
@property (nonatomic, retain) IBOutlet UIButton *option_two;
@property (nonatomic, retain) IBOutlet UIButton *option_three;
@property (nonatomic, retain) IBOutlet UIButton *option_four;

@property (nonatomic, retain) IBOutlet UIButton *joker_skip;
@property (nonatomic, retain) IBOutlet UIButton *joker_stop;
@property (nonatomic, retain) IBOutlet UIButton *joker_fold;

@property (nonatomic, retain) IBOutlet UILabel *timerLabel;
@property (nonatomic, retain) IBOutlet UILabel *currentScore;
@property (nonatomic, retain) IBOutlet UILabel *scoreLabel;
@property (nonatomic, retain) ProgressAnimation *box;

@property (nonatomic, retain) IBOutlet UIViewController *welcomeVC;
@property (nonatomic, retain) IBOutlet UIViewController *restartVC;
@property (nonatomic, retain) IBOutlet UIViewController *winningVC;
@property (nonatomic, retain) IBOutlet UIViewController *achievementOneVC;
//@property (nonatomic, retain) IBOutlet LoginVC *loginVC;

@property (nonatomic, retain) IBOutlet FaceBookConnect *fb;

@property (nonatomic, retain) ReadImages *i_reader;

// game centre


- (GADRequest *)createRequest;

-(IBAction)restartQuiz :(id)sender;
-(IBAction)hideWelcome :(id)sender;
-(IBAction)publishStory :(id)sender;

@end



