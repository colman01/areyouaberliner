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


@interface ViewController ()

@end

@implementation ViewController

@synthesize adBanner = adBanner_;


@synthesize option_one, option_two, option_three, option_four;
@synthesize joker_fold, joker_skip, joker_stop;
@synthesize question, box, timerLabel, levelBar, welcomeVC, restartVC, winningVC;
@synthesize currentScore;
@synthesize i_reader;

NSMutableArray * options;
NSMutableArray * jokers;

NSMutableArray * allQuestions;


#pragma mark Timers States Parameters
float timer;
float t =0.0 ;
float speed = 0.5f;
float distance = 5.15;
CGRect r;
int level = 0;
//int answers[] = {1,2,3,4};
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
	// Do any additional setup after loading the view, typically from a nib.
    
    [self createQs];
    [self prepareImages];
    levelBar.hidden = YES;
    
    
    #pragma admob
    // Initialize the banner at the bottom of the screen.
    CGPoint origin = CGPointMake(0.0,
                                 self.view.frame.size.height -
                                 CGSizeFromGADAdSize(kGADAdSizeBanner).height);
    
    

    // Use predefined GADAdSize constants to define the GADBannerView.
    self.adBanner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner
                                                   origin:origin]
    ;
    
    self.adBanner.frame=CGRectMake(0, 410, 320,50);
    
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
    
    options = [[NSMutableArray alloc] init];
    jokers = [[NSMutableArray alloc] init];
    
    [options addObject:option_one];
    [options addObject:option_two];
    [options addObject:option_three];
    [options addObject:option_four];
    
    [self setWrap];
    
    [joker_stop setTitle:@"Stop" forState:UIControlStateNormal];
    [joker_skip setTitle:@"Skip" forState:UIControlStateNormal];
    [joker_fold setTitle:@"Fold" forState:UIControlStateNormal];
    
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


#pragma mark GADRequest generation

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

//#ifdef __cplusplus
//extern "C"
- (GADRequest *)createRequest {
    GADRequest *request = [GADRequest request];
    request.testing = YES;
    //Make the request for a test ad
//    request.testDevices = [NSArray arrayWithObjects:
//                           GAD_SIMULATOR_ID,
//                           nil];
    
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    
    return request;
}
//#endif

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
//    [t shuffle];
//    [t shuffleQuestions];
    allQuestions = [[NSMutableArray alloc] init];
    allQuestions = [t.questions copy];
}

-(void) setWrap {
    for (int i=0; i < [options count]; i++) {
        UIButton * b = [options objectAtIndex:i];
        b.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    }
}

#pragma mark read Images

-(void) prepareImages {
    i_reader = [[ReadImages alloc] init];
    [i_reader readImages];
}

#pragma mark Question text

-(void) setTextForQuestion:(int)postion {
    Question * q = [allQuestions objectAtIndex:postion];
    [question        setText:q.text];
    [option_one      setTitle:q.answer_1 forState:UIControlStateNormal];
    [option_two      setTitle:q.answer_2 forState:UIControlStateNormal];
    [option_three    setTitle:q.answer_3 forState:UIControlStateNormal];
    [option_four     setTitle:q.answer_4 forState:UIControlStateNormal];
    
    // color to highlight
    
    [option_one setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]     forState:UIControlStateHighlighted | UIControlStateSelected ];
    [option_two setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
    [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
    [option_four setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
    
    switch (q.correct) {
            
            [option_one setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
            [option_two setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
            [option_three setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
            [option_four setBackgroundImage:[UIImage imageNamed:nil] forState:UIControlStateNormal ];
            
        case 0:
            

            
            [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]   forState:UIControlStateSelected | UIControlStateHighlighted  ];
            [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState: UIControlStateHighlighted| UIControlStateSelected ];
            [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
            break;
            
        case 1:
            [option_one    setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_two    setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_three  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_four   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
            break;
            
        case 2:
            [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_three setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]    forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]  forState:UIControlStateHighlighted | UIControlStateSelected ];
            break;
            
        case 4:
            [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
            [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]     forState:UIControlStateHighlighted | UIControlStateSelected ];
            break;
            
        default:
            break;
    }
    
}

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
        [self updateLevelText_start];
        t = 0;
        pause_ = YES;
    }
}

#pragma mark Level Text

-(void) updateLevelText {
    NSRange range = NSMakeRange(1,0);
    const CGFloat fontSize = 15;
    UIFont *boldFont = [UIFont boldSystemFontOfSize:fontSize];
    UIFont *regularFont = [UIFont systemFontOfSize:fontSize];
    UIColor *foregroundColor = [UIColor whiteColor];
    NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:
                           boldFont, NSFontAttributeName,
                           foregroundColor, NSForegroundColorAttributeName, nil];
    NSDictionary *subAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                              regularFont, NSFontAttributeName, nil];
    NSMutableAttributedString *attributedText =
    [[NSMutableAttributedString alloc] initWithString:levelBar.text
                                           attributes:attrs];
    [attributedText setAttributes:subAttrs range:range];
    [levelBar setAttributedText:attributedText];
}

-(void) updateLevelText_start {
    NSRange range = NSMakeRange(1,3);
    const CGFloat fontSize = 15;
    UIFont *boldFont = [UIFont boldSystemFontOfSize:fontSize];
    UIFont *regularFont = [UIFont systemFontOfSize:fontSize];
    UIColor *foregroundColor = [UIColor whiteColor];
    NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:
                           boldFont, NSFontAttributeName,
                           foregroundColor, NSForegroundColorAttributeName, nil];
    NSDictionary *subAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                              regularFont, NSFontAttributeName, nil];
    NSMutableAttributedString *attributedText =
    [[NSMutableAttributedString alloc] initWithString:levelBar.text
                                           attributes:attrs];
    [attributedText setAttributes:subAttrs range:range];
    [levelBar setAttributedText:attributedText];
}

#pragma mark Highlighting first run
-(void) setOptionButtonImages {
    
    [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"]   forState:UIControlStateHighlighted | UIControlStateSelected ];
    [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
    [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
    [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted | UIControlStateSelected ];
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
    if (tag == q.correct  ) {
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
            [self updateLevelText_start];
            [self showWinningView];
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
        pause_ = NO;
    }
    
    // answer incorrect
    else {
        level = 0;
        counter = 0;
        [currentScore setText:@"0"];
        [self resetBox];
        [self updateLevelText];
        
        [button setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted ];
        [button setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateNormal ];
        
        switch (q.correct) {
            case 0:
                [option_one setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
                break;
            case 1:
                [option_two setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
                break;
            case 2:
                [option_three setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
                break;
            case 3:
                [option_four setBackgroundImage:[UIImage imageNamed:@"answer-correct.png"] forState:UIControlStateNormal];
                break;
                
            default:
                break;
        }
//        sleep(3);
        [self showRestartCounterView];
        score = 0;
    }
    
    NSMutableAttributedString *levels = [[NSMutableAttributedString alloc] initWithString:levelBar.text];
    NSRange selectedRange = NSMakeRange(1, 15); // 4 characters, starting at index 22
    [levels beginEditing];
    NSString *boldFontName = [[UIFont boldSystemFontOfSize:12] fontName];
    [levelBar setFont:[UIFont boldSystemFontOfSize:12]];
    [levels addAttribute:NSFontAttributeName
                   value:boldFontName
                   range:selectedRange];
    
    if ([levelBar respondsToSelector:@selector(setAttributedText:)])
    {
        const CGFloat fontSize = 15;
        UIFont *boldFont = [UIFont boldSystemFontOfSize:fontSize];
        UIFont *regularFont = [UIFont systemFontOfSize:fontSize];
        UIColor *foregroundColor = [UIColor whiteColor];
        NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:
                               boldFont, NSFontAttributeName,
                               foregroundColor, NSForegroundColorAttributeName, nil];
        NSDictionary *subAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                                  regularFont, NSFontAttributeName, nil];
        int interval = 0;
        
        NSRange range ;
        if (level < 18) {
            // bug
            range = NSMakeRange(level+1,interval+3);
            interval++;
            interval++;
            level++;
            level++;
            NSMutableAttributedString *attributedText =
            [[NSMutableAttributedString alloc] initWithString:levelBar.text
                                                   attributes:attrs];
            [attributedText setAttributes:subAttrs range:range];
            [levelBar setAttributedText:attributedText];
        }
        else  if (level < 40){
            range = NSMakeRange(level+1,interval+3);
            interval++;
            interval++;
            interval++;
            level++;
            level++;
            level++;
            NSMutableAttributedString *attributedText =
            [[NSMutableAttributedString alloc] initWithString:levelBar.text
                                                   attributes:attrs];
            [attributedText setAttributes:subAttrs range:range];
            [levelBar setAttributedText:attributedText];
        }
        else {
            return;
        }
    }
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

-(void) showWinningView {
    NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"Winning" owner:self options:nil];
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
    winningVC = [[UIViewController alloc] init];
    [winningVC setView:nibVC];
    [winningVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:winningVC animated:YES completion:nil];
}

#pragma mark Transitions
- (IBAction)showDefault:(id)sender {
    ViewController *sampleView = [[ViewController alloc] init] ;
    [self presentViewController:sampleView animated:YES completion:nil];
}

- (IBAction)showFlip:(id)sender {
    ViewController *sampleView = [[ViewController alloc] init] ;
    [sampleView setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:sampleView animated:YES completion:nil];
}

- (IBAction)showDissolve:(id)sender {
    ViewController *sampleView = [[ViewController alloc] init] ;
    [sampleView setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:sampleView animated:YES completion:nil];}

- (IBAction)showCurl:(id)sender {
    ViewController *sampleView = [[ViewController alloc] init] ;
    [sampleView setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    [self presentViewController:sampleView animated:YES completion:nil];
}

- (IBAction)hideWelcome:(id)sender {
    [self setTextForQuestion:0];
    level = 0;
    [self resetBox];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self updateLevelText_start];
}

#pragma mark Restart Quiz

- (IBAction)restartQuiz:(id)sender {
    score = 0;
    pause_ = NO;
    [self resetBox];
    
    [joker_stop setUserInteractionEnabled:YES];
    [joker_skip setUserInteractionEnabled:YES];
    
    [option_one setBackgroundImage:[UIImage imageNamed:@"button-solid-bordered.png"] forState:UIControlStateNormal];
    [option_two setBackgroundImage:[UIImage imageNamed:@"button-solid-bordered.png"] forState:UIControlStateNormal];
    [option_three setBackgroundImage:[UIImage imageNamed:@"button-solid-bordered.png"] forState:UIControlStateNormal];
    [option_four setBackgroundImage:[UIImage imageNamed:@"button-solid-bordered.png"] forState:UIControlStateNormal];
    
    [option_one   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted];
    [option_two   setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted];
    [option_three setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted];
    [option_four  setBackgroundImage:[UIImage imageNamed:@"answer-incorrect.png"] forState:UIControlStateHighlighted];
    
    [joker_stop setBackgroundImage:nil forState:UIControlStateNormal];
    [joker_skip setBackgroundImage:nil forState:UIControlStateNormal];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self setTextForQuestion:counter];
    
}

#pragma mark Jokers

- (IBAction) jokerWasPressed:(id) sender {
    UIButton *button = sender;
    //stop
    if (button.tag == 5) {
        if (!pause_) {
            pause_ = YES;
            //            [button setEnabled:NO];
            //            [button setAdjustsImageWhenDisabled:NO];
            //            [button setAlpha:1.0];
            [button setUserInteractionEnabled:NO];
            
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
    }
    
    // fold
    if (button.tag == 7) {
        counter = 0;
        level = 0;
        [currentScore setText:@"0"];
        
        joker_skip.hidden = NO;
        joker_stop.hidden = NO;
        [self updateLevelText_start];
        [self setTextForQuestion:0];
        [self showRestartCounterView];
    }
}


@end
