//
//  Buttons.h
//  areyouaberliner
//
//  Created by colman on 29.04.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ReadImages.h"
#import "CreateQuestions.h"
#import "tst.h"


@interface Buttons : UIViewController {
 
}

-(void) setWrap:(NSMutableArray *) optionBtns;
-(void) resetOptionBtnImgs:(NSMutableArray *) optionBtns;
-(void) setImgForQuestion:(NSMutableArray * ) optionBtns : (Question *)q;

@end





//    NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"Winning" owner:self options:nil];
//    UIView *nibVC = [nibObjects objectAtIndex:0];
//    NSArray *subViews = [nibVC subviews];
//    for (int i=0; i < [subViews count]; i++) {
//        NSObject * obj = subViews[i];
//        if ([obj isKindOfClass:[UILabel class]]) {
//
//            UILabel * lbl = (UILabel *) obj;
//            if (lbl.tag == 200) {
//                [lbl setText:[[NSNumber numberWithInt:score] stringValue]];
//            }
//        }
//    }
//    winningVC = [[UIViewController alloc] init];
//    [winningVC setView:nibVC];
//    [winningVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
//    [self presentViewController:winningVC animated:YES completion:nil];


//        btnAniTimer = [NSTimer scheduledTimerWithTimeInterval:.3
//                                         target:self
//                                       selector:@selector(flashButtons:)
//                                       userInfo:nil
//                                        repeats:YES];


//-(void) finish:(UIViewController  *) x {
//    //    [x dismissViewControllerAnimated:YES completion:nil afterDelay:1.0f];
//    [self dismissViewControllerAnimated:YES completion:nil];
//}