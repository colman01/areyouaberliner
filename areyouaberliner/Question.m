//
//  Question.m
//  BannerExample
//
//  Created by colman on 04.12.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import "Question.h"

@implementation Question
@synthesize text, answer_1,answer_2,answer_3,answer_4, correct, answers;




//- (id)initWithText:(NSString *)text states:(NSArray *)states
- (id)initWithText:(NSString *)text_ answer_a:(NSString *)text1 answer_b:(NSString *)text2 answer_c:(NSString *)text3 answer_d:(NSString *)text4   correct:(int)correctAnswer
{
    
    self.text = text_;
    self.answer_1 = text1;
    self.answer_2 = text2;
    self.answer_3 = text3;
    self.answer_4 = text4;
    
    self.correct = correctAnswer;
    
    
//    [answers addObjectsFromArray:<#(NSArray *)#>];
//     initWithObjects:
    answers = [[NSMutableArray alloc] initWithObjects:text1,text2,text3,text4, nil];
    
    return self;
}


//- (void)shuffle
//{
//    for (uint i = 0; i < self.count; ++i)
//    {
//        // Select a random element between i and end of array to swap with.
//        int nElements = self.count - i;
//        int n = arc4random_uniform(nElements) + i;
//        [self exchangeObjectAtIndex:i withObjectAtIndex:n];
//    }
//}

-(void) shuffleThisQuestion {

    int final=0;
    int nElements = answers.count;
    int n = arc4random_uniform(nElements);
    [answers exchangeObjectAtIndex:0 withObjectAtIndex:n];
    final = n;  // final postion of answer is set
    
//    for (uint i = 0; i < answers.count; ++i) {
//        int nElements = answers.count - i;
//        int n = arc4random_uniform(nElements) + i;
////        int n = (arc4random() % nElements) + i;
//        if (i == correct) {  // this happens once
//            [answers exchangeObjectAtIndex:i withObjectAtIndex:n];
//            final = n;  // final postion of answer is set
//        }
//        else {
//            [answers exchangeObjectAtIndex:i withObjectAtIndex:n];
//        }
//    }
    correct = final;
    self.answer_1 = answers[0];
    self.answer_2 = answers[1];
    self.answer_3 = answers[2];
    self.answer_4 = answers[3];
}


@end
