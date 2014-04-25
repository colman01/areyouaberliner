//
//  CreateQuestions.h
//  Quiz
//
//  Created by colman on 31.10.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface CreateQuestions : NSObject
{
    
    Question * question;
    
    NSMutableArray * questions;
}


@property (nonatomic, retain) Question *question;
@property (nonatomic, retain) NSMutableArray *questions;


-(void) create;

@end





//questions = [[NSMutableArray alloc] init];
//question = [[Question alloc] initWithText:@"Wie groß ist die Stadt Berlin?" answer_a:@"892 km²" answer_b:@"652 km²" answer_c:@"111 km²" answer_d:@"5.000 km²" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Berlin ist die nach Einwohnern…" answer_a:@"zweitgrößte Stadt Europas" answer_b:@"größte Stadt Europas." answer_c:@"drittgrößte Stadt Europas." answer_d:@"viertgrößte Stadt Europas." correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Welcher Fluss fließt durch Berlin" answer_a:@"Spree" answer_b:@"Oder" answer_c:@"Elbe" answer_d:@"Rhein" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wann wurde Berlin erstmals urkundlich erwähnt?" answer_a:@"1237" answer_b:@"753" answer_c:@"1777" answer_d:@"1991" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie lange dauert die Berliner Grundschule?" answer_a:@"sechs Jahre" answer_b:@"vier Jahre" answer_c:@"acht Jahre" answer_d:@"drei Jahre" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie heißt der Berliner Schulversuch, bei dem man das Abitur ein Jahr schneller ablegen kann?" answer_a:@"	Schnellläuferprogramm" answer_b:@"Fixsprinterprogramm" answer_c:@"Hastigrennerprogramm" answer_d:@"Flottjoggerprogramm" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie viele Hochschulen gibt es in Berlin?" answer_a:@"31" answer_b:@"23" answer_c:@"13" answer_d:@"51" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Welche Farbe haben die Berliner U-Bahnen?" answer_a:@"gelb" answer_b:@"rot" answer_c:@"silber" answer_d:@"braun" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wann eröffnete der Berliner Hauptbahnhof?" answer_a:@"2006" answer_b:@"2000" answer_c:@"1995" answer_d:@"2010" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Welches Bordell steht auf der Lilienalleé?" answer_a:@"Herzblatt" answer_b:@"Erdbeerchen" answer_c:@"Zuckertäubchen" answer_d:@"Mausebärchen" correct:1];
//
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Was machte Angela Merkel, während die Berliner Mauer fiel?" answer_a:@"	Sie saß in der Sauna." answer_b:@"Sie aß Lachs." answer_c:@"Sie ließ sich die Beine enthaaren." answer_d:@"Sie stand vor dem Hochzeitsaltar." correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie viele Berlins gibt es in den USA?" answer_a:@"31" answer_b:@"keines" answer_c:@"651" answer_d:@"9" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Welche Stadt liegt am nördlichsten?" answer_a:@"Berlin" answer_b:@"London" answer_c:@"Frankfurt" answer_d:@"Paris" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Welche Stadt liegt am südlichsten?" answer_a:@"London" answer_b:@"Kopenhagen" answer_c:@"Minsk" answer_d:@"Berlin" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie heißt der Berliner Rapper 'Sido' heißt mit bürgerlichem Namen?" answer_a:@"Paul Würdig" answer_b:@"Martin See" answer_c:@"Gottfried Piwonka" answer_d:@"Christian Schneider" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie viele Teilnehmer gab es bei der ersten Love Parade 1989?" answer_a:@"150" answer_b:@"1.500" answer_c:@"15.000" answer_d:@"150.000" correct:1];
//
//[questions addObject:question];
//
//question = [[Question alloc] initWithText:@"Wie heißt ein Berliner Bezirk?" answer_a:@"Neukölln" answer_b:@"Altbonn" answer_c:@"Frischmünnchen" answer_d:@"Olldesden" correct:1];
//
//[questions addObject:question];
