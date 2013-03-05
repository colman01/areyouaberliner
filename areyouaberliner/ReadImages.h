//
//  ReadImages.h
//  BannerExample
//
//  Created by colman on 05.12.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReadImages : NSObject {
    
    UIImage *i_correct_answer;
    UIImage *i_wrong_answer;
    UIImage *i_back;
}


@property (nonatomic, retain) UIImage *i_correct_answer;
@property (nonatomic, retain) UIImage *i_wrong_answer;
@property (nonatomic, retain) UIImage *i_back;

-(void) readImages;

@end
