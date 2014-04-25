//
//  Buttons.m
//  areyouaberliner
//
//  Created by colman on 29.04.13.
//  Copyright (c) 2013 herznote. All rights reserved.
//

#import "Buttons.h"

@implementation Buttons



NSMutableArray * options;
NSMutableArray * jokers;

NSMutableArray * allQuestions;

Question * currentQuestion;

#pragma mark Question text

-(void) setImgForQuestion:(NSMutableArray * ) optionBtns : (Question *)q {

    [[optionBtns objectAtIndex:0] setTitle:q.answer_1 forState:UIControlStateNormal];
    [[optionBtns objectAtIndex:1] setTitle:q.answer_2 forState:UIControlStateNormal];
    [[optionBtns objectAtIndex:2] setTitle:q.answer_3 forState:UIControlStateNormal];
    [[optionBtns objectAtIndex:3] setTitle:q.answer_4 forState:UIControlStateNormal];
    
    UIImage * correct = [UIImage imageNamed:@"answer-correct.png"];
    UIImage * wrong   = [UIImage imageNamed:@"answer-incorrect.png"];
    
    switch (q.correct) {
        case 0:
            [[optionBtns objectAtIndex:0]   setBackgroundImage:correct forState:UIControlStateSelected];
            [[optionBtns objectAtIndex:1]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:2]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:3]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            break;
            
        case 1:
            [[optionBtns objectAtIndex:0]    setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:1]    setBackgroundImage:correct forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:2]    setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:3]    setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            break;
            
        case 2:
            [[optionBtns objectAtIndex:0]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:1]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:2]   setBackgroundImage:correct forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:3]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            break;
            
        case 3:
            [[optionBtns objectAtIndex:0]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:1]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:2]   setBackgroundImage:wrong   forState:UIControlStateHighlighted];
            [[optionBtns objectAtIndex:3]   setBackgroundImage:correct forState:UIControlStateHighlighted];
            break;
            
        default:
            break;
    }
    
}

-(void) setWrap:(NSMutableArray *) optionBtns {
    for (int i=0; i < [optionBtns count]; i++) {
        UIButton * b = [optionBtns objectAtIndex:i];
        b.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    }
}

-(void) resetOptionBtnImgs:(NSMutableArray *) optionBtns {
    for (int i=0; i < [optionBtns count]; i++) {
        UIButton * b = [optionBtns objectAtIndex:i];
            [b setBackgroundImage:[UIImage imageNamed:@"button-solid-bordered.png"] forState:UIControlStateNormal];
    }
}

@end
