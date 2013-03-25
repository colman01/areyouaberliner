//
//  TextFieldData.h
//  Quiz
//
//  Created by colman on 14.10.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextFieldData : NSObject {
    
    NSArray *one;
    NSArray *two;
    NSArray *three;
    NSArray *four;
    
}

-(void) setupQuestions;

@property (nonatomic, retain) NSArray * one;
@property (nonatomic, retain) NSArray * two;
@property (nonatomic, retain) NSArray * three;
@property (nonatomic, retain) NSArray * four;

@end
