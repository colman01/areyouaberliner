//
//  TextFieldData.m
//  Quiz
//
//  Created by colman on 14.10.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import "TextFieldData.h"

@implementation TextFieldData
@synthesize one,two,three,four;


-(void) setupQuestions {
    one = [NSArray arrayWithObjects:@"Next questions?",@"There is no more",@"There will be more",@"Where are my questions",@"What is a question?",nil];
    two = [NSArray arrayWithObjects:@"Q is back",@"But is he a cat?",@"..a mouse",@"Still a Q",@"A monster?",nil];
    three = [NSArray arrayWithObjects:@"Who's President is well on the game of war with many of the other Countries who are well more powerful than his?",@"Irans",@"Germans",@"Russians",@"English",nil];
    four = [NSArray arrayWithObjects:@"Next questions?",@"There is no more"@"There will be more",@"Where are my questions",@"What is a question?",nil];
}



@end
