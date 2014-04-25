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
    
    
    question = [[Question alloc] initWithText:@"16 Wie viele Teilnehmer gab es bei der ersten Love Parade 1989?" answer_a:@"150" answer_b:@"1.500" answer_c:@"15.000" answer_d:@"150.000" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"17 Wie heißt ein Berliner Bezirk?" answer_a:@"Neukölln" answer_b:@"Altbonn" answer_c:@"Frischmünnchen" answer_d:@"Olldesden" correct:0];
    
    question = [[Question alloc] initWithText:@"Was ist das Berliner Maskottchen?" answer_a:@"Berliner Bär" answer_b:@"Berliner Löwe" answer_c:@"Berliner Tiger" answer_d:@"Berliner Elefant" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Einwohner hat Berlin?" answer_a:@"3,5 Mio." answer_b:@"4,2 Mio." answer_c:@"2,0 Mio." answer_d:@"2,5 Mio." correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißen die alljährlichen Filmfestspiele?" answer_a:@"Berlinale" answer_b:@"Berlinette" answer_c:@"Filmfestspiele Berlin" answer_d:@"Berlin Moviestars" correct:0];
    [questions addObject:question];
    
    
    question = [[Question alloc] initWithText:@"Was steht an der Straße des 17. Juni?" answer_a:@"Siegessäule" answer_b:@"Museumsinsel" answer_c:@"Olypmiastadion" answer_d:@"Philharmonie" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt ein  Berliner Getränk?" answer_a:@"Berliner Weisse" answer_b:@"Berliner Weißbier" answer_c:@"Berliner Vino Rosso" answer_d:@"Berliner Kümmerling" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Für welches Gericht ist Berlin bekannt?" answer_a:@"Currywurst" answer_b:@"Sauerkraut" answer_c:@"Gyros" answer_d:@"Weißwurst" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt die bekannteste Shoppingmeile in Berlin?" answer_a:@"Ku´damm	Rosa" answer_b:@"Luxemburg Allee" answer_c:@"Alexander-Ring" answer_d:@"Schönhauser Straße" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welches Bauwerk steht am Potsdamer Platz?" answer_a:@"Sony Center" answer_b:@"Hauptbahnhof" answer_c:@"Jahn-Stadion" answer_d:@"Fernsehturm" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt das Rathaus in Berlin?" answer_a:@"Das rote Rathaus" answer_b:@"Das gelbe Rathaus" answer_c:@"Das weiße Rathaus" answer_d:@"Das blaue Rathaus" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wann wurde das Brandenburger Tor errichtet?" answer_a:@"1788 bis 1791" answer_b:@"1901 bis 1914" answer_c:@"1848 bis 1873" answer_d:@"1537 bis 1539" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"In welchem Monat findet das Filmfestival Berlinale statt?" answer_a:@"Februar" answer_b:@"März" answer_c:@"Januar" answer_d:@"Mai" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt die Anordnung der Gebäude im Regierungsviertel?" answer_a:@"Band des Bundes" answer_b:@"Bundestagsaarena" answer_c:@"Regierungsgarten" answer_d:@"Halle der Demokratie" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wer schrieb den Roman „Berlin Alexanderplatz“?" answer_a:@"Alfred Döblin" answer_b:@"Thomas Mann" answer_c:@"Herman Hesse" answer_d:@"Johann Wolfgang v. Goethe" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wo steht der „Hohle Zahn“?" answer_a:@"Am Kurfürstendamm" answer_b:@"In Neukölln" answer_c:@"Auf der Museumsinsel" answer_d:@"Am Alexander-Ring" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Museen befinden sich auf der Museumsinsel?" answer_a:@"5" answer_b:@"9" answer_c:@"1" answer_d:@"2" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was ist „Berliner Luft“?" answer_a:@"Ein Dessert" answer_b:@"Ein Flughafen" answer_c:@"Eine Therme" answer_d:@"Ein Kleidungsstück" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele internationale Flughäfen hat Berlin?" answer_a:@"3" answer_b:@"4" answer_c:@"5" answer_d:@"18" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Auf welchem Bauwerk steht die goldene Viktoria?" answer_a:@"Auf der Siegessäule" answer_b:@"Auf dem Reichstag" answer_c:@"Auf dem Fersehturm" answer_d:@"Auf dem Brandenburger Tor" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welches Bauwerk in Berlin ist 365 Meter hoch?" answer_a:@"Der Fernsehturm" answer_b:@"Der Reichstag" answer_c:@"Das Olypmiastadion" answer_d:@"Das Brandenburger Tor" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie lange fährt der ICE von Hamburg nach Berlin?" answer_a:@"knapp zwei Stunden" answer_b:@"drei Stunden" answer_c:@"15 Minuten" answer_d:@"knapp acht Stunden" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was wird in Potsdam-Babelsberg produziert?" answer_a:@"Filme" answer_b:@"Fahrräder" answer_c:@"Gullideckel" answer_d:@"Trüffel" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was kann man im „Haus der Kulturen der Welt“ hören?	" answer_a:@"Musik" answer_b:@"Meeresrauschen" answer_c:@"Hundebellen" answer_d:@"Hörspiele" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wo ist das KaDeWe?" answer_a:@"An der Tauentzienstraße" answer_b:@"Auf der Museumsinsel" answer_c:@"Am Alexander-Ring" answer_d:@"Auf dem Alexanderplatz" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Besatzungszonen gab es in Berlin?" answer_a:@"4" answer_b:@"3" answer_c:@"3" answer_d:@"6" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Pferde stehen auf dem Brandenburger Tor?" answer_a:@"4" answer_b:@"5" answer_c:@"3" answer_d:@"6" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt eine Band aus Berlin?" answer_a:@"die Ärzte" answer_b:@"die Köche" answer_c:@"die Straßenkehrer" answer_d:@"die Lehrer" correct:0];
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welche Widmung kann man an der Fassade des Berliner Reichstags bewundern?" answer_a:@"DEM DEUTSCHEN VOLKE" answer_b:@"DEM DEUTSCHEN KAISER" answer_c:@"DER DEMOKRATIE ZU EHREN" answer_d:@"IM NAMEN DES HERRN" correct:0];
    [questions addObject:question];
    

    question = [[Question alloc] initWithText:@"Was meint der Berliner, wenn er von einem \"Nieselpriem\" spricht?" answer_a:@"langweiligen Menschen" answer_b:@"leichten Sprühregen" answer_c:@"Märchenfigur" answer_d:@"Spucke" correct:0];
    
    [questions addObject:question];
    

    question = [[Question alloc] initWithText:@"Was versteht der Berliner unter einer \"Nuckelpinne\"?" answer_a:@"langsames Auto" answer_b:@"Baby" answer_c:@"Dachrinne" answer_d:@"Waldtier" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"\"Feez\" " answer_a:@"Spaß, Vergnügen" answer_b:@"Ärger" answer_c:@"einen faulen Tag" answer_d:@"Gottesdienst" correct:0];
    
    [questions addObject:question];
    
    
    
    question = [[Question alloc] initWithText:@"Was ist \"Muckefuck\"?" answer_a:@"Ersatzkaffee" answer_b:@"Blended Whiskey" answer_c:@"Blended Scotch" answer_d:@"Blödsinn" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was sind \"Loden\"?" answer_a:@"Haare" answer_b:@"Besitztümer" answer_c:@"Engelsfiguren" answer_d:@"Schuhe" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"\"meschugge\" ist ein Berliner Ausdruck für..." answer_a:@"bescheuert" answer_b:@"verwirrt" answer_c:@"gutaussehend" answer_d:@"nervig" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Ein \"Atze\" ist ein..." answer_a:@"sehr guter Freund" answer_b:@"Idiot" answer_c:@"Boxer" answer_d:@"Verkehrspolizist" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welche Uhrzeit meint der Berliner mit \"Viertel drei\"?" answer_a:@"14:15 Uhr" answer_b:@"14:45 Uhr" answer_c:@"15:15 Uhr" answer_d:@"15:15" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was ist eigentlich ein \"Berliner Zimmer\"?" answer_a:@"ein langgestrecktes Altbau-Durchgangszimmer " answer_b:@"ein Zimmer zur Untermiete " answer_c:@"eine Kneipe" answer_d:@"	Badezimmer" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie nennt der Berliner das Gebäck, das im Rest Deutschlands \"Berliner\" heißt?" answer_a:@"Pfannkuchen" answer_b:@"Eierkuchen" answer_c:@"Schneeball" answer_d:@"Bulette" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welche Farbe ist nicht Teil der Berliner Fahne?" answer_a:@"Blau" answer_b:@"Schwarz" answer_c:@"Rot" answer_d:@"Weiß" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt die bekannteste Currywursbude Berlins?" answer_a:@"Curry 36" answer_b:@"Ketchup 13" answer_c:@"Wurstladen 12" answer_d:@"Berliner Wurst 6" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt das Autobahnstueck, auf dem frueher Motorsport betrieben wurde?" answer_a:@"Avus" answer_b:@"Nürburg Ring" answer_c:@"Speed Way" answer_d:@"Berliner Ring" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welcher Bundespräsident verlegte seinen ersten Amtssitz ins Schloss Bellevue?" answer_a:@"Richard von Weizsäcker" answer_b:@"Theodor Heuss" answer_c:@"Johannes Rau" answer_d:@"Horst Köhler" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@" Was spielt Bruno Ganz in dem Film \"Himmel über Berlin\"?" answer_a:@"Einen Engel" answer_b:@"Eine Wildgans" answer_c:@"Einen Piloten" answer_d:@"Einen Pfarrer" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"An welchem Platz befinden sich Konzerthaus, Deutscher und Französischer Dom?" answer_a:@"Gendarmenmarkt" answer_b:@"Offiziersmarkt" answer_c:@"Polizeimarkt" answer_d:@"Politessenmarkt" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welches Regierungsgebäude steht am Platz der Republik?" answer_a:@"Reichstag" answer_b:@"Deutsche Bank" answer_c:@"Rotes Rathaus" answer_d:@"Palast der Republik" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt der S-Bahnhof zwischen Alexanderplatz und Friedrichstraße?" answer_a:@"Hackescher Markt" answer_b:@"Spatener Markt" answer_c:@"Pickelscher Markt" answer_d:@"Absatzmarkt" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie hoch war die Berliner Mauer?" answer_a:@"3,60 m" answer_b:@"2,10 m" answer_c:@"5,50 m" answer_d:@"1 m" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welche dieser Sehenswürdigkeiten steht in Berlin?" answer_a:@"Schloss Charlottenburg" answer_b:@"Schloss Waldeck" answer_c:@"Schloss Sanssouci" answer_d:@"Schloss Schwanstein" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt das jährlich stattfindende Sandskulpturen-Festival?" answer_a:@"Sandsation" answer_b:@"Strandsation" answer_c:@"Berliner Strand" answer_d:@"Berliner Sand" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@" Wer war kein Regierender Bürgermeister in Berlin?" answer_a:@"Johannes Rau" answer_b:@"Willy Brandt" answer_c:@"Richard von Weizsäcker" answer_d:@"Richard Gere" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt der Platz am Brandenburger Tor?" answer_a:@"Pariser Platz" answer_b:@"Gummiplatz" answer_c:@"Berliner Platz" answer_d:@"Wendeplatz" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"An welchem Tag fiel in Berlin die Mauer?" answer_a:@"9-Nov-89" answer_b:@"30-Sep-89" answer_c:@"3-Oct-90" answer_d:@"4-Oct-89" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welcher 30 Meter hohe Mann wird von den Berlinern auch spöttisch „Dreikäsehoch“ genannt?" answer_a:@"Molecule Man" answer_b:@"Atomic Man" answer_c:@"Thomas Mann" answer_d:@"Spiderman" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Kuppeln hat der Berliner Dom?	" answer_a:@"Fünf" answer_b:@"Vier" answer_c:@"Drei" answer_d:@"Sechs" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wo wurde 1923 das erste Chinarestaurant Deutschlands eröffnet?" answer_a:@"Kantstraße 130b" answer_b:@"Luxemburger Str. 10" answer_c:@"Schaperstraße 24" answer_d:@"Unter den Linden 6" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt der Mauerspringer der 15 Mal von West- nach Ost-Berlin kletterte?" answer_a:@"Arnold Kabe" answer_b:@"Dieter Beilig" answer_c:@"Martin Schaad" answer_d:@"Stefan Heym" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Adolf Hitler plante Berlin umzutaufen in ..." answer_a:@"Germania" answer_b:@"Deutschlandia" answer_c:@"Schland" answer_d:@"Germanicum" correct:0];
    
    [questions addObject:question];
    
    
    question = [[Question alloc] initWithText:@"Aus wie vielen Stadtbezirken besteht Berlin?" answer_a:@"12" answer_b:@"10" answer_c:@"8" answer_d:@"22" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie hieß das Abkommen in dem die Sektoren-Regelung festgeschrieben war?" answer_a:@"Londoner Protokolle" answer_b:@"Wiener Vertrag" answer_c:@"Berliner Konferenz" answer_d:@"Pariser Abkommen" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie lang war die Berliner Mauer?" answer_a:@"167,8 km" answer_b:@"101,2 km" answer_c:@"95,1 km" answer_d:@"212,2 km" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wann beschloss der Deutsche Bundestag das Berlin Sitz der Bundesregierung wird?" answer_a:@"1991" answer_b:@"1990" answer_c:@"1989" answer_d:@"1992" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie viele Opernhäuser hat Berlin?" answer_a:@"drei" answer_b:@"keines" answer_c:@"acht" answer_d:@"55" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Welcher DDR-Politiker verkündete: „Niemand hat die Absicht, eine Mauer zu errichten!“?" answer_a:@"Walter Ulbricht" answer_b:@"Otto Grotewohl" answer_c:@"Ernst Thälmann" answer_d:@"Helmuth Kohl" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wie heißt der berühmt gewordene Grenzübergang zwischen amerikanischem und sowjetischem Sektor?" answer_a:@"Checkpoint Charlie" answer_b:@"Checkpoint John" answer_c:@"Checkpoint Benny" answer_d:@"Checkpoint Angie" correct:0];
    
    [questions addObject:question];
    

    question = [[Question alloc] initWithText:@"Welches Gebäude wurde vor der Maueröffnung als „Tränenpalast“ bezeichnet?" answer_a:@"Ausreisehalle Bahnhof Friedrichstraße" answer_b:@"Kunsthaus Tacheles" answer_c:@"Russisches Haus der Wissenschaft und Kultur" answer_d:@"Sudhaus der Kindl-Brauerei" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Was ist das Radialsystem V?	" answer_a:@"Veranstaltungszentrum" answer_b:@"Heizkraftwerk" answer_c:@"Brauerei" answer_d:@"Bahnhof" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wann wurde der Flughafen Berlin-Tempelhof geschlossen" answer_a:@"2008" answer_b:@"1962" answer_c:@"2001" answer_d:@"2013" correct:0];
    
    [questions addObject:question];
    question = [[Question alloc] initWithText:@"Eine wichtige Einnahmequelle der Stadt Berlin ist .." answer_a:@"der Tourismus." answer_b:@"die Kamelzucht." answer_c:@"die Astrologie." answer_d:@"der Emissionshandel." correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Da wird der Hund in der Pfanne ..." answer_a:@"verrückt." answer_b:@"gebraten." answer_c:@"geschmort." answer_d:@"angeleint." correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Wem hörste trapsen?" answer_a:@"Nachtijall" answer_b:@"Jondel" answer_c:@"Blumentopp" answer_d:@"Zickenschulze" correct:0];
    
    [questions addObject:question];
    
    question = [[Question alloc] initWithText:@"Der jibt an wie 'ne Tüte ..." answer_a:@"Mücken." answer_b:@"Fliegen." answer_c:@"Libellen." answer_d:@"Flöhe." correct:0];
    
    [questions addObject:question];
    
}


@end
