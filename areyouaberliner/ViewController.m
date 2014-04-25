//
//  ViewController.m
//  areyouaberliner
//
//  Created by colman on 25.02.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import "ViewController.h"
#import "GADBannerView.h"
#import "GADRequest.h"
#import "GADRequest.h"
#import "SampleConstants.h"
#import "tst.h"


@interface ViewController () <FBLoginViewDelegate>

@end

@implementation ViewController

@synthesize adBanner = adBanner_;
@synthesize postParams = _postParams;

@synthesize option_one, option_two, option_three, option_four;
@synthesize joker_fold, joker_skip, joker_stop;
@synthesize question, box, timerLabel, welcomeVC, restartVC, winningVC, achievementOneVC;
@synthesize currentScore;
@synthesize i_reader;
@synthesize buttonsControl, fb;
NSMutableArray * options;
NSMutableArray * jokers;
NSMutableArray * allQuestions;

NSTimer * btnAniTimer;

Question * currentQuestion;

extern NSString *const FBSessionStateChangedNotification;

#pragma mark Timers States Parameters
float timer;
float t =0.0 ;
float speed = 0.5f;
float distance = 5.15;
CGRect r;
int level = 0;
bool pause_ = NO;
bool shown = NO;
int score = 0;

bool joker_skip_pressed = false;
bool joker_stop_pressed = false;
bool joker_fold_pressed = false;

#pragma mark Admob ID
#define kSampleAdUnitID @"a150a0d2c5e7b60"

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
        box = [[ProgressAnimation alloc] init];
        r = CGRectMake(0, 75, 3, 12);
        box.frame = r;
        [box setBackgroundColor:[UIColor grayColor]];
    }
    return self;
}

-(void) viewDidAppear:(BOOL)animated   {
    
    if (!shown) {

        if (FBSession.activeSession.isOpen) {
            NSLog(@"active");
        }
        
        NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"WelcomeView" owner:self options:nil];
        UIView *nibVC = [nibObjects objectAtIndex:0];
        welcomeVC = [[UIViewController alloc] init];
        [welcomeVC setView:nibVC];
        [self presentViewController:welcomeVC animated:YES completion:nil];
        shown = YES;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    buttonsControl = [[Buttons alloc]init];
    
    fb = [[FaceBookConnect alloc] init];
    
    [self prepareImages];
    [self setScreenSize];
    [self positionAd];
    
    options = [[NSMutableArray alloc] init]; 
    jokers = [[NSMutableArray alloc] init];
    
    [options addObject:option_one];
    [options addObject:option_two];  
    [options addObject:option_three]; 
    [options addObject:option_four];  
    
    [self haltHighlight];
    
    // reordered methods ***********
    [self createQs]; 
    [self setTextForQuestion:0];

    [jokers addObject:joker_stop];  
    [jokers addObject:joker_skip];  
    [jokers addObject:joker_fold];  
    
    [self setupButtons];  
    [self.view addSubview:box];
    
    [NSTimer scheduledTimerWithTimeInterval:speed
                                     target:self
                                   selector:@selector(updateCounter:)
                                   userInfo:nil
                                    repeats:YES];    
}

- (UIView *)addbanner{
    CGPoint origin = CGPointMake(0.0, 0);
    self.adBanner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner origin:origin];
    UIView * headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320, self.adBanner.adSize.size.height)] ;
    self.adBanner.adUnitID = @"a150a0d2c5e7b60";
    self.adBanner.delegate = self;
    [self.adBanner setRootViewController:self];
    [headerView addSubview:self.adBanner];
    [self.adBanner loadRequest:[self createRequest]];
    return headerView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Screen Size methods

-(void) setScreenSize {
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        CGSize result = [[UIScreen mainScreen] bounds].size;
        if(result.height == 480)
        {
            // iPhone Classic
            [[NSBundle mainBundle] loadNibNamed:@"ViewController" owner:self options:nil];
        }
        if(result.height == 568)
        {
            // iPhone 5
            [[NSBundle mainBundle] loadNibNamed:@"VC_2" owner:self options:nil];
        }
    }
}

-(void) positionAd {
    // move ad for retina
    
#pragma admob
    // Initialize the banner at the bottom of the screen.
    CGPoint origin = CGPointMake(0.0,
                                 self.view.frame.size.height -
                                 CGSizeFromGADAdSize(kGADAdSizeBanner).height);
    
    // Use predefined GADAdSize constants to define the GADBannerView.
    self.adBanner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner origin:origin];
    
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        CGSize result = [[UIScreen mainScreen] bounds].size;
        if(result.height == 480)
        {
            // iPhone Classic
            self.adBanner.frame=CGRectMake(0, 410, 320,50);
        }
        if(result.height == 568)
        {
            // iPhone 5
            self.adBanner.frame=CGRectMake(0, 500, 320,50);
        }
    }
    
    // Note: Edit SampleConstants.h to provide a definition for kSampleAdUnitID
    // before compiling.
    self.adBanner.adUnitID = kSampleAdUnitID;
    self.adBanner.delegate = self;
    self.adBanner.hidden = NO;
    [self.adBanner setRootViewController:self];
    [self.view addSubview:self.adBanner];
    self.adBanner.center =
    CGPointMake(self.view.center.x, self.adBanner.center.y);
    [self.adBanner loadRequest:[self createRequest]];
}

#pragma mark GADRequest generation

- (GADRequest *)createRequest {
    GADRequest *request = [GADRequest request];
    request.testing = YES;
    //Make the request for a test ad
    request.testDevices = [NSArray arrayWithObjects:
                           GAD_SIMULATOR_ID,
                           nil];
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    return request;
}

#pragma mark GADBannerViewDelegate impl

// We've received an ad successfully.
- (void)adViewDidReceiveAd:(GADBannerView *)adView {
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"Failed to receive ad with error: %@", [error localizedFailureReason]);
}

#pragma mark question creation and layout

-(void) createQs {
    tst * t = [[tst alloc] init];
    [t create];
    [t shuffle];  // order questions
    [t shuffleQuestions];
    allQuestions = [[NSMutableArray alloc] init];
    allQuestions = [t.questions copy];
}

#pragma mark read Images

-(void) prepareImages {
    i_reader = [[ReadImages alloc] init];
    [i_reader readImages];
}


#pragma mark bar
int counter = 0;

-(void) resetBox {
    r = CGRectMake(0, 70, 3, 15);
    box.frame = r;
    t = 0.0;
}

#pragma mark timers
- (void)updateButtonCounter:(NSTimer *) timer {
    [self showRestartCounterView];
    [self setTextForQuestion:counter];
    return;
}

- (void)updateCounter:(NSTimer *)theTimer {
    if (!pause_) {
        CGRect frm = box.frame;
        CGPoint pt = frm.origin;
        pt.x += distance;
        frm.origin = pt;
        box.frame = frm;
        t = t+0.5;
        if (t < 61) {
            [timerLabel setText:[NSString stringWithFormat:@"%.1f", t] ];
        }
    }
    if (t == 30) {
        [self setTextForQuestion:0];
        [self showRestartCounterView];
        t = 0;
        pause_ = YES;
    }
}
-(void)stallTimer {
    if (pause_) {
        pause_=NO;
    }
    else
        pause_ = YES;
}

#pragma mark Show Winning View and Restart View

-(void) showRestartCounterView {
    NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"GameOver" owner:self options:nil];
    UIView *nibVC = [nibObjects objectAtIndex:0];
    NSArray *subViews = [nibVC subviews];
    
    for (int i=0; i < [subViews count]; i++) {
        NSObject * obj = subViews[i];
        if ([obj isKindOfClass:[UILabel class]]) {
            
            UILabel * lbl = (UILabel *) obj;
            if (lbl.tag == 200) {
                [lbl setText:[[NSNumber numberWithInt:score] stringValue]];
            }
        }
    }
    restartVC = [[UIViewController alloc] init];
    [restartVC setView:nibVC];
    [restartVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:restartVC animated:YES completion:nil];
    
    usleep(10000);
    
}


#pragma mark Transitions

- (IBAction)showFlip:(id)sender {
    ViewController *sampleView = [[ViewController alloc] init] ;
    [sampleView setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:sampleView animated:YES completion:nil];
}

- (IBAction)hideWelcome:(id)sender {
    level = 0;
    [self resetBox];
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark Jokers

- (IBAction) jokerWasPressed:(id) sender {
    UIButton *button = sender;
    //stop
    if (button.tag == 5) {
        if (!pause_) {
            pause_ = YES;
            [button setUserInteractionEnabled:NO];
//            joker_stop.hidden = YES;
            [joker_stop setAlpha:0.5];
            
        } else {
            pause_ = NO;
        }
    }
    // skip
    if (button.tag == 6) {
        [button setUserInteractionEnabled:NO];
        
        [self resetBox];
        t = 0.0;
        counter++;
        [self setTextForQuestion:counter];
//        joker_skip.hidden = YES;
        [joker_skip setAlpha:0.5];
    }
    // fold
    if (button.tag == 7) {
        counter = 0;
        level = 0;
        [currentScore setText:@"0"];
        
        joker_skip.hidden = NO;
        joker_stop.hidden = NO;
        
        [self setTextForQuestion:0];
        [self showRestartCounterView];
    }
}



#pragma mark Question text

-(void) setTextForQuestion:(int)postion {
    Question * q = [allQuestions objectAtIndex:postion];
    currentQuestion = [[Question alloc] init];
    currentQuestion = q;
    [question        setText:q.text];
    [buttonsControl setImgForQuestion:options :q];
}

#pragma mark Button images

-(void) haltHighlight {
    [buttonsControl resetOptionBtnImgs:options];
    [joker_stop setTitle:@"Stop" forState:UIControlStateNormal];
    [joker_skip setTitle:@"Skip" forState:UIControlStateNormal];
    [joker_fold setTitle:@"Fold" forState:UIControlStateNormal];
}

#pragma mark Buttons

-(void) setupButtons {
    for (int i=0; i< 4; i++) {
        [options[i] addTarget:self action:@selector(buttonWasPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
    for (int j = 0; j < 3; j++) {
        [jokers[j] addTarget:self action:@selector(jokerWasPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
}

/*
 *  Only the buttons for answering the question are handled
 */
- (IBAction) buttonWasPressed:(id) sender {
    UIButton *button = sender;
    int tag = button.tag;
    Question * q = [allQuestions objectAtIndex:counter];
    
    if (tag == q.correct ) {
        if (level == 0) {
            level++;
            level++;
        }
        [button setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateHighlighted ];
        [currentScore setText:[NSString stringWithFormat:@"%i", counter + 1]];
        score++;
        if (score == 15) {
            level = 0;
            counter = 0;
            [self resetBox];
            [self showAchievementView:5];
            [currentScore setText:@"0"];
            [self setTextForQuestion:counter];
            [self resetBox];
            
            pause_ = NO;
            return;
        }
        counter++;
        if (counter >= [allQuestions count]) {
            counter = 0;
        }
        [self setTextForQuestion:counter];
        [self resetBox];
        [timerLabel setText:@"0.0" ];
//        [self performSelector:@selector(dummyCaller:) withObject:nil afterDelay:5.0];
        pause_ = YES;
        [self performSelector:@selector(stallTimer) withObject:nil afterDelay:2.0];
//        pause_ = NO;
    }
    
    else {
        
        UIButton * wasActuallyCorrect = [options objectAtIndex:currentQuestion.correct];
        [wasActuallyCorrect setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal ];
        [self checkAchievement:score];
        level = 0;
        counter = 0;
        [currentScore setText:@"0"];
        [self resetBox];
        [self showRestartCounterView];
        score = 0;
    }
}

-(void) showAchievementView:(int)imgNum{
    NSString * imageString = [ [NSString alloc] initWithFormat:@"achievement%i.png",imgNum];
    achievementOneVC = [[UIViewController alloc] init];
    NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"Achievement" owner:self options:nil];
    UIView *nibVC = [nibObjects objectAtIndex:0];
    UIImage *tempImage = [UIImage imageNamed:imageString];
    [achievementImageView setImage:tempImage];
    [achievementOneVC setView:nibVC];
    [achievementOneVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:achievementOneVC animated:YES completion:nil];
    [self performSelector:@selector(restartQuiz:) withObject:nil  afterDelay:3.0f];
}

-(void) checkAchievement:(int) achievementLevel {
    if (achievementLevel < 4) {
        
        [self showAchievementView:1];
    }
    else if (achievementLevel > 3 && achievementLevel < 7) {
        [self showAchievementView:2];
    }
    
    if (achievementLevel > 6 && achievementLevel < 11) {
        [self showAchievementView:3];
    }
    
    if (achievementLevel >10 && achievementLevel < 15) {
        [self showAchievementView:4];
    }
}

#pragma mark Restart Quiz

- (IBAction)restartQuiz:(id)sender {
    score = 0;
    pause_ = NO;
    [self resetBox];
    
    [joker_stop setAlpha:1.0];
    [joker_skip setAlpha:1.0];
    
    
    // reordered methods ***********
    [self createQs];
    [self setTextForQuestion:0];
    
    [joker_stop setUserInteractionEnabled:YES];
    [joker_skip setUserInteractionEnabled:YES];
    
    [buttonsControl resetOptionBtnImgs:options];

    [joker_stop setBackgroundImage:nil forState:UIControlStateNormal];
    [joker_skip setBackgroundImage:nil forState:UIControlStateNormal];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self setTextForQuestion:counter];
    
}

# pragma mark Facebook Share Testing

- (IBAction)login:(id)sender {
    [fb openSessionWithAllowLoginUI:YES];
}


- (IBAction)publishStory:(id)sender
{
    
    if (FBSession.activeSession.isOpen) {
        //Make you request
        [fb performPublishAction:^{
            NSLog(@"trying to make comment public");
            // otherwise fall back on a request for permissions and a direct post
            NSString *message = [NSString stringWithFormat:@"Your current score is %i",  score];
//            NSString *message = [NSString stringWithFormat:@"Is Graham reading this?"];
            
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

#pragma mark exit

- (IBAction) exitButton: (id) sender {
    exit(0);
}

@end
