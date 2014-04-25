//
//  CreateQuestions.m
//  Quiz
//
//  Created by colman on 31.10.12.
//  Copyright (c) 2012 colman. All rights reserved.
//

#import "CreateQuestions.h"

@implementation CreateQuestions

@synthesize question;
@synthesize questions;


//-(void) init {
//
//}

-(void) create {
    
    questions = [[NSMutableArray alloc] init];
    question = [[Question alloc] initWithText:@"1 Wie groß ist die Stadt Berlin?" answer_a:@"892 km²" answer_b:@"652 km²" answer_c:@"111 km²" answer_d:@"5.000 km²" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"2 Berlin ist die nach Einwohnern…" answer_a:@"zweitgrößte Stadt Europas" answer_b:@"größte Stadt Europas." answer_c:@"drittgrößte Stadt Europas." answer_d:@"viertgrößte Stadt Europas." correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"3 Welcher Fluss fließt durch Berlin" answer_a:@"Spree" answer_b:@"Oder" answer_c:@"Elbe" answer_d:@"Rhein" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"4 Wann wurde Berlin erstmals urkundlich erwähnt?" answer_a:@"1237" answer_b:@"753" answer_c:@"1777" answer_d:@"1991" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"5 Wie lange dauert die Berliner Grundschule?" answer_a:@"sechs Jahre" answer_b:@"vier Jahre" answer_c:@"acht Jahre" answer_d:@"drei Jahre" correct:1];
    
    [questions addObject:question];
    
//    question = [[Question alloc] initWithText:@"6 Wie heißt der Berliner Schulversuch, bei dem man das Abitur ein Jahr schneller ablegen kann?" answer_a:@"Schnellläuferprogramm" answer_b:@"Fixsprinterprogramm" answer_c:@"Hastigrennerprogramm" answer_d:@"Flottjoggerprogramm" correct:1];
    question = [[Question alloc] initWithText:@"6 Wie heißt der Berliner Schulversuch, bei dem man das Abitur ein Jahr schneller ablegen kann?" answer_a:@"CCC" answer_b:@"xxx" answer_c:@"Hastigrennerprogramm" answer_d:@"Flottjoggerprogramm" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"7 Wie viele Hochschulen gibt es in Berlin?" answer_a:@"31" answer_b:@"23" answer_c:@"13" answer_d:@"51" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"8 Welche Farbe haben die Berliner U-Bahnen?" answer_a:@"gelb" answer_b:@"rot" answer_c:@"silber" answer_d:@"braun" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"9 Wann eröffnete der Berliner Hauptbahnhof?" answer_a:@"2006" answer_b:@"2000" answer_c:@"1995" answer_d:@"2010" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"10 Welches Bordell steht auf der Lilienalleé?" answer_a:@"Herzblatt" answer_b:@"Erdbeerchen" answer_c:@"Zuckertäubchen" answer_d:@"Mausebärchen" correct:1];
    
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"11 Was machte Angela Merkel, während die Berliner Mauer fiel?" answer_a:@"	Sie saß in der Sauna." answer_b:@"Sie aß Lachs." answer_c:@"Sie ließ sich die Beine enthaaren." answer_d:@"Sie stand vor dem Hochzeitsaltar." correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"12 Wie viele Berlins gibt es in den USA?" answer_a:@"31" answer_b:@"keines" answer_c:@"651" answer_d:@"9" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"13 Welche Stadt liegt am nördlichsten?" answer_a:@"Berlin" answer_b:@"London" answer_c:@"Frankfurt" answer_d:@"Paris" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"14 Welche Stadt liegt am südlichsten?" answer_a:@"London" answer_b:@"Kopenhagen" answer_c:@"Minsk" answer_d:@"Berlin" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"15 Wie heißt der Berliner Rapper 'Sido' heißt mit bürgerlichem Namen?" answer_a:@"Paul Würdig" answer_b:@"Martin See" answer_c:@"Gottfried Piwonka" answer_d:@"Christian Schneider" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"16 Wie viele Teilnehmer gab es bei der ersten Love Parade 1989?" answer_a:@"150" answer_b:@"1.500" answer_c:@"15.000" answer_d:@"150.000" correct:1];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"17 Wie heißt ein Berliner Bezirk?" answer_a:@"Neukölln" answer_b:@"Altbonn" answer_c:@"Frischmünnchen" answer_d:@"Olldesden" correct:1];

    question = [[Question alloc] initWithText:@"Was ist das Berliner Maskottchen?" answer_a:@"Berliner Bär" answer_b:@"Berliner Löwe" answer_c:@"Berliner Tiger" answer_d:@"Berliner Elefant" correct:1];
    [questions addObject:question];

    question = [[Question alloc] initWithText:@"Wie viele Einwohner hat Berlin?" answer_a:@"3,5 Mio." answer_b:@"4,2 Mio." answer_c:@"2,0 Mio." answer_d:@"2,5 Mio." correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißen die alljährlichen Filmfestspiele?" answer_a:@"Berlinale" answer_b:@"Berlinette" answer_c:@"Filmfestspiele Berlin" answer_d:@"Berlin Moviestars" correct:1];
    [questions addObject:question];
    
    
    question = [[Question alloc] initWithText:@"Was steht an der Straße des 17. Juni?" answer_a:@"Siegessäule" answer_b:@"Museumsinsel" answer_c:@"Olypmiastadion" answer_d:@"Philharmonie" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt ein  Berliner Getränk?" answer_a:@"Berliner Weisse" answer_b:@"Berliner Weißbier" answer_c:@"Berliner Vino Rosso" answer_d:@"Berliner Kümmerling" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Für welches Gericht ist Berlin bekannt?" answer_a:@"Currywurst" answer_b:@"Sauerkraut" answer_c:@"Gyros" answer_d:@"Weißwurst" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt die bekannteste Shoppingmeile in Berlin?" answer_a:@"Ku´damm	Rosa" answer_b:@"Luxemburg Allee" answer_c:@"Alexander-Ring" answer_d:@"Schönhauser Straße" correct:1];
    [questions addObject:question];

    question = [[Question alloc] initWithText:@"Welches Bauwerk steht am Potsdamer Platz?" answer_a:@"Sony Center" answer_b:@"Hauptbahnhof" answer_c:@"Jahn-Stadion" answer_d:@"Fernsehturm" correct:1];
    [questions addObject:question];

    question = [[Question alloc] initWithText:@"Wie heißt das Rathaus in Berlin?" answer_a:@"Das rote Rathaus" answer_b:@"Das gelbe Rathaus" answer_c:@"Das weiße Rathaus" answer_d:@"Das blaue Rathaus" correct:1];
    [questions addObject:question];

    question = [[Question alloc] initWithText:@"Wann wurde das Brandenburger Tor errichtet?" answer_a:@"1788 bis 1791" answer_b:@"1901 bis 1914" answer_c:@"1848 bis 1873" answer_d:@"1537 bis 1539" correct:1];
    [questions addObject:question];

    question = [[Question alloc] initWithText:@"In welchem Monat findet das Filmfestival Berlinale statt?" answer_a:@"Februar" answer_b:@"März" answer_c:@"Januar" answer_d:@"Mai" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt die Anordnung der Gebäude im Regierungsviertel?" answer_a:@"Band des Bundes" answer_b:@"Bundestagsaarena" answer_c:@"Regierungsgarten" answer_d:@"Halle der Demokratie" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wer schrieb den Roman „Berlin Alexanderplatz“?" answer_a:@"Alfred Döblin" answer_b:@"Thomas Mann" answer_c:@"Herman Hesse" answer_d:@"Johann Wolfgang v. Goethe" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wo steht der „Hohle Zahn“?" answer_a:@"Am Kurfürstendamm" answer_b:@"In Neukölln" answer_c:@"Auf der Museumsinsel" answer_d:@"Am Alexander-Ring" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Museen befinden sich auf der Museumsinsel?" answer_a:@"5" answer_b:@"9" answer_c:@"1" answer_d:@"2" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was ist „Berliner Luft“?" answer_a:@"Ein Dessert" answer_b:@"Ein Flughafen" answer_c:@"Eine Therme" answer_d:@"Ein Kleidungsstück" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele internationale Flughäfen hat Berlin?" answer_a:@"3" answer_b:@"4" answer_c:@"5" answer_d:@"18" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Auf welchem Bauwerk steht die goldene Viktoria?" answer_a:@"Auf der Siegessäule" answer_b:@"Auf dem Reichstag" answer_c:@"Auf dem Fersehturm" answer_d:@"Auf dem Brandenburger Tor" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welches Bauwerk in Berlin ist 365 Meter hoch?" answer_a:@"Der Fernsehturm" answer_b:@"Der Reichstag" answer_c:@"Das Olypmiastadion" answer_d:@"Das Brandenburger Tor" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie lange fährt der ICE von Hamburg nach Berlin?" answer_a:@"knapp zwei Stunden" answer_b:@"drei Stunden" answer_c:@"15 Minuten" answer_d:@"knapp acht Stunden" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was wird in Potsdam-Babelsberg produziert?" answer_a:@"Filme" answer_b:@"Fahrräder" answer_c:@"Gullideckel" answer_d:@"Trüffel" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was kann man im „Haus der Kulturen der Welt“ hören?	" answer_a:@"Musik" answer_b:@"Meeresrauschen" answer_c:@"Hundebellen" answer_d:@"Hörspiele" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wo ist das KaDeWe?" answer_a:@"An der Tauentzienstraße" answer_b:@"Auf der Museumsinsel" answer_c:@"Am Alexander-Ring" answer_d:@"Auf dem Alexanderplatz" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Besatzungszonen gab es in Berlin?" answer_a:@"4" answer_b:@"3" answer_c:@"3" answer_d:@"6" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Pferde stehen auf dem Brandenburger Tor?" answer_a:@"4" answer_b:@"5" answer_c:@"3" answer_d:@"6" correct:1];
    [questions addObject:question];

    question = [[Question alloc] initWithText:@"Wie heißt eine Band aus Berlin?" answer_a:@"die Ärzte" answer_b:@"die Köche" answer_c:@"die Straßenkehrer" answer_d:@"die Lehrer" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welche Widmung kann man an der Fassade des Berliner Reichstags bewundern?" answer_a:@"DEM DEUTSCHEN VOLKE" answer_b:@"DEM DEUTSCHEN KAISER" answer_c:@"DER DEMOKRATIE ZU EHREN" answer_d:@"IM NAMEN DES HERRN" correct:1];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welcher der drei Berliner Dome steht nicht am Gendarmenmarkt?" answer_a:@"Deutscher Dom" answer_b:@"Französischer Dom" answer_c:@"Berliner Dom" answer_d:@"Petersdom" correct:1];
    
    [questions addObject:question];
}






@end
