//
//  tst.m
//  BannerExample
//
//  Created by colman on 04.12.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import "tst.h"

@implementation tst

@synthesize question;
@synthesize questions;

NSMutableArray * currentQuestionData;


- (void)shuffle
{
    NSUInteger count = [questions count];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        NSInteger nElements = count - i;
        NSInteger n = (arc4random() % nElements) + i;
        [questions exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

-(void) shuffleQuestions {
    for (int i=0; i<[questions count]; i++) {
        Question * q = [questions objectAtIndex:i];
        [q shuffleThisQuestion];
    }
}

-(void) create {
    
    questions = [[NSMutableArray alloc] init];

    
    // 1
    question = [[Question alloc] initWithText:@"Wie groß ist die Stadt Berlin?" answer_a:@"892 km²" answer_b:@"652 km²" answer_c:@"111 km²" answer_d:@"5.000 km²" correct:0];
    
    [questions addObject:question];
    
//    2
    question = [[Question alloc] initWithText:@"Berlin ist die nach Einwohnern…" answer_a:@"zweitgrößte Stadt Europas" answer_b:@"größte Stadt Europas." answer_c:@"drittgrößte Stadt Europas." answer_d:@"viertgrößte Stadt Europas." correct:0];
    
    [questions addObject:question];
    
//    3
    question = [[Question alloc] initWithText:@"Welcher Fluss fließt durch Berlin" answer_a:@"Spree" answer_b:@"Oder" answer_c:@"Elbe" answer_d:@"Rhein" correct:0];
    
    [questions addObject:question];
    
//    4
    question = [[Question alloc] initWithText:@"Wann wurde Berlin erstmals urkundlich erwähnt?" answer_a:@"1237" answer_b:@"753" answer_c:@"1777" answer_d:@"1991" correct:0];
    
    [questions addObject:question];
    
//    5
    question = [[Question alloc] initWithText:@"Wie lange dauert die Berliner Grundschule?" answer_a:@"sechs Jahre" answer_b:@"vier Jahre" answer_c:@"acht Jahre" answer_d:@"drei Jahre" correct:0];
    
    [questions addObject:question];
    
//    6
    question = [[Question alloc] initWithText:@"Wie heißt der Berliner Schulversuch, bei dem man das Abitur ein Jahr schneller ablegen kann?" answer_a:@"Schnellläuferprogramm" answer_b:@"Fixsprinterprogramm" answer_c:@"Hastigrennerprogramm" answer_d:@"Flottjoggerprogramm" correct:0];
    
    [questions addObject:question];
    
//    7
    question = [[Question alloc] initWithText:@"Wie viele Hochschulen gibt es in Berlin?" answer_a:@"31" answer_b:@"23" answer_c:@"13" answer_d:@"51" correct:0];
    
    [questions addObject:question];
    
//    8
    question = [[Question alloc] initWithText:@"Welche Farbe haben die Berliner U-Bahnen?" answer_a:@"gelb" answer_b:@"rot" answer_c:@"silber" answer_d:@"braun" correct:0];
    
    [questions addObject:question];
    
//    9
    question = [[Question alloc] initWithText:@"Wann eröffnete der Berliner Hauptbahnhof?" answer_a:@"2006" answer_b:@"2000" answer_c:@"1995" answer_d:@"2010" correct:0];
    
    [questions addObject:question];
    
//    10
    question = [[Question alloc] initWithText:@"Welches Bordell steht auf der Lilienalleé?" answer_a:@"Herzblatt" answer_b:@"Erdbeerchen" answer_c:@"Zuckertäubchen" answer_d:@"Mausebärchen" correct:0];
    
    [questions addObject:question];
    
//    11
    question = [[Question alloc] initWithText:@"Was machte Angela Merkel, während die Berliner Mauer fiel?" answer_a:@"	Sie saß in der Sauna." answer_b:@"Sie aß Lachs." answer_c:@"Sie ließ sich die Beine enthaaren." answer_d:@"Sie stand vor dem Hochzeitsaltar." correct:0];
    
    [questions addObject:question];
    
//    12
    question = [[Question alloc] initWithText:@"Wie viele Berlins gibt es in den USA?" answer_a:@"31" answer_b:@"keines" answer_c:@"651" answer_d:@"9" correct:0];
    
    [questions addObject:question];
    
//    13
    question = [[Question alloc] initWithText:@"Welche Stadt liegt am nördlichsten?" answer_a:@"Berlin" answer_b:@"London" answer_c:@"Frankfurt" answer_d:@"Paris" correct:0];
    
    [questions addObject:question];
    
//    14
    question = [[Question alloc] initWithText:@"Welche Stadt liegt am südlichsten?" answer_a:@"London" answer_b:@"Kopenhagen" answer_c:@"Minsk" answer_d:@"Berlin" correct:0];
    
    [questions addObject:question];
    
//    15
    question = [[Question alloc] initWithText:@"Wie heißt der Berliner Rapper 'Sido' heißt mit bürgerlichem Namen?" answer_a:@"Paul Würdig" answer_b:@"Martin See" answer_c:@"Gottfried Piwonka" answer_d:@"Christian Schneider" correct:0];
    
    [questions addObject:question];
}


@end
