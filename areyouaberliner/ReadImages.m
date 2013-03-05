//
//  ReadImages.m
//  BannerExample
//
//  Created by colman on 05.12.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import "ReadImages.h"

@implementation ReadImages

@synthesize i_correct_answer, i_wrong_answer, i_back;

-(void) readImages {
//    UIImage *img = [[UIImage alloc] initWithContentsOfFile:@"contactHeader.png"];
    i_correct_answer = [[UIImage alloc] initWithContentsOfFile:@"answer-correct.png"];
    i_wrong_answer = [[UIImage alloc] initWithContentsOfFile:@"incorrect-correct.png"];
    i_back = [[UIImage alloc] initWithContentsOfFile:@"screen1.png"];
    
}

@end
