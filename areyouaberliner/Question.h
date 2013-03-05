//
//  Question.h
//  BannerExample
//
//  Created by colman on 04.12.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject{
    
    NSString * text;
    
    NSString * answer_1;
    NSString * answer_2;
    NSString * answer_3;
    NSString * answer_4;
    
    int correct;
    
    NSMutableArray * answers;
    
}


@property NSString *text;

@property NSString * answer_1;
@property NSString * answer_2;
@property NSString * answer_3;
@property NSString * answer_4;
@property int correct;

@property NSMutableArray * answers;


- (id)initWithText:(NSString *)text answer_a:(NSString *)text1 answer_b:(NSString *)text2 answer_c:(NSString *)text3 answer_d:(NSString *)text4   correct:(int) correctAnswer;

-(void) shuffleThisQuestion;

@end
