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


@class GADBannerView, GADRequest;

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
    
//    IBOutlet UILabel * scoreLabel;
    
    IBOutlet UILabel * levelBar;
    IBOutlet UILabel * currentScore;
    
    ProgressAnimation * box;
    TextFieldData * tfd;
    Question * question_;
//    CreateQuestions  * createQuestions;
    
    NSArray *one;
    NSArray *two;
    NSArray *three;
    NSArray *four;
    NSArray *questions;
    
    UIViewController * welcomeVC;
    UIViewController * restartVC;
    UIViewController * winningVC;
    
    
}

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

@property (nonatomic, retain) IBOutlet UILabel *levelBar;
@property (nonatomic, retain) IBOutlet UILabel *currentScore;

@property (nonatomic, retain) IBOutlet UILabel *scoreLabel;

@property (nonatomic, retain) ProgressAnimation *box;

//@property (nonatomic, retain) CreateQuestions *createQuestions;

@property (nonatomic, retain) IBOutlet UIViewController *welcomeVC;
@property (nonatomic, retain) IBOutlet UIViewController *restartVC;
@property (nonatomic, retain) IBOutlet UIViewController *winningVC;

@property (nonatomic, retain) ReadImages *i_reader;

- (GADRequest *)createRequest;

//-(void)askQuestion;
-(void) updateLevelText;
-(IBAction)restartQuiz :(id)sender;
-(IBAction)hideWelcome :(id)sender;



@end




//switch (currentQuestion.correct) {
//
//        [option_one   setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
//        [option_two   setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
//        [option_three setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
//        [option_four  setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
//
//    case 0:
//        [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]   forState:UIControlStateSelected | UIControlStateHighlighted  ];
//        [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState: UIControlStateHighlighted| UIControlStateSelected ];
//        [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
//        break;
//
//    case 1:
//        [option_one    setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_two    setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_three  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_four   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
//        break;
//
//    case 2:
//        [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_three setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]    forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
//        break;
//
//    case 4:
//        [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
//        [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]     forState:UIControlStateHighlighted | UIControlStateSelected ];
//        break;
//
//    default:
//        break;
//}


//        [button setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted ];
//        [button setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateNormal ];

//        switch (q.correct) {
//            case 0:
//                [option_one setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
//                break;
//            case 1:
//                [option_two setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
//                break;
//            case 2:
//                [option_three setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
//                break;
//            case 3:
//                [option_four setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
//                break;
//
//            default:
//                break;
//        }


// Here we're creating a simple GADRequest and whitelisting the application
// for test ads. You should request test ads during development to avoid
// generating invalid impressions and clicks.
//- (GADRequest *)createRequest {
//    GADRequest *request = [GADRequest request];
//
//    // Make the request for a test ad. Put in an identifier for the simulator as
//    // well as any devices you want to receive test ads.
//    request.testDevices =
//    [NSArray arrayWithObjects:
//     // TODO: Add your device/simulator test identifiers here. They are
//     // printed to the console when the app is launched.
//     nil];
//    return request;
//}