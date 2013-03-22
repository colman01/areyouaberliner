//
//  tst.h
//  BannerExample
//
//  Created by colman on 04.12.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface tst : NSObject
{
    
    Question * question;
    
    NSMutableArray * questions;
}


@property (nonatomic, retain) Question *question;
@property (nonatomic, retain) NSMutableArray *questions;


-(void) create;

-(void) shuffle;

-(void) shuffleQuestions;

@end


