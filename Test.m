//
//  Test.m
//  Amadeus
//
//  Created by Claudia Oliva on 24/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Test.h"

@interface Test ()

@end

@implementation Test

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


//Variables Globales
bool respuestaEscena01 = false;
bool respuestaEscena02 = false;
bool respuestaEscena03 = false;
bool respuestaEscena04 = false;
bool respuestaEscena05 = false;

bool respuestaEscena06 = false;
bool respuestaEscena07 = false;
bool respuestaEscena08 = false;
bool respuestaEscena09 = false;
bool respuestaEscena10 = false;

bool resp1 = true;
bool resp2 = true;
bool resp3 = true;
bool resp4 = true;
bool resp5 = true;

bool resp6 = true;
bool resp7 = true;
bool resp8 = true;
bool resp9 = true;
bool resp10 = true;

int puntos = 0;

bool banderaActivacion = false;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Cargar Dato
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"savestring"];
    [labelPuntos setText:loadstring];
    [labelPuntos setText:loadstring];
    
    resp1 = true;
    resp2 = true;
    resp3 = true;
    resp4 = true;
    resp5 = true;
    resp6 = true;
    resp7 = true;
    resp8 = true;
    resp9 = true;
    resp10 = true;

    //if (banderaActivacion == true) {
    [self VerPuntaje];
    //}
    
}

-(void)Ceros{
    
    puntos = 0;
    
}


-(IBAction)GuardarPuntaje:(id)sender{
    
    NSString *savestring = labelPuntos.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savestring forKey:@"savestring"];
    [defaults synchronize];
    
    [self Ceros];
    
}

-(void)VerPuntaje{
    
    
    puntos = puntos;
    
    if (puntos <= 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
        
        
        
    }else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
        
    }
    
    if ([etiquetaPrueba.text isEqualToString:@"--"]) {
        
        etiquetaPrueba.alpha = 0.0;
        
        NSString *message = @"";
        
        if (puntos <= 4) {
            
            message = @"Ups you have to listen and learn more about the Mozart's work";
            
        }
        if(puntos > 4 && puntos <= 8){
            
            message = @"Your knowledge level is very good but you can be better, don´t stop and continue in this way";
            
        }
        if (puntos > 8) {
            
            message = @"Wow you are amazing check out this score and share it with your friends Congratulations!!";
            
        }
        
            
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Amadeus" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
        
    }
    
    if ([pruebaLabel02.text isEqualToString:@"::"]) {
        
        etiquetaPrueba.alpha = 0.0;
        
        UIAlertView *alert1=[[UIAlertView alloc]initWithTitle:@"Amadeus" message:@"Welcome, press the music button and start to learn about the works of Mozart at the end will know your score" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert1 show];
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Metodos

-(IBAction)Ayuda01:(id)sender{
    
    action01 = [[UIActionSheet alloc] initWithTitle:@"Is an extended musical composition in Western classical music, scored almost always for orchestra, usually contains at least one movement or episode composed according to the sonata principle, Many symphonies are tonal works in four movements with the first in sonata form" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action01 showInView:self.view];
}
-(IBAction)Ayuda02:(id)sender{
    
    action02 = [[UIActionSheet alloc] initWithTitle:@"Is one of three dance pieces composed by Mozart in 1791, Mozart had been appointed to this position on the 1st December 1787 by Emperor Joseph II, The dances are scored for piccolo, two flutes, two oboes, two bassoons, two horns, two trumpets, timpani, violins I and II, violoncellos, and double basses" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action02 showInView:self.view];
    
}
-(IBAction)Ayuda03:(id)sender{
    action03 = [[UIActionSheet alloc] initWithTitle:@"Is a musical composition, and/or performance, in someone's honor. Serenades are typically calm, light music, was a type of cantata performed outdoors, in the evening, with mixed vocal and instrumental forces. Again, most likely a guitar or lute was used to accompany the voice. " delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action03 showInView:self.view];
    
}
-(IBAction)Ayuda04:(id)sender{
    action04 = [[UIActionSheet alloc] initWithTitle:@"Is a concerto for solo flute and instrumental ensemble, customarily the orchestra. Such works have been written from the Baroque period, when the solo concerto form was first developed, up through the present day. Some major composers have contributed to the flute concerto repertoire, with the best known works including those by Mozart and Vivaldi" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action04 showInView:self.view];
    
}
-(IBAction)Ayuda05:(id)sender{
    action05 = [[UIActionSheet alloc] initWithTitle:@"Was composed by Wolfgang Amadeus Mozart in Salzburg in 1775. Mozart was only 19 at the time, opening with a brilliant G major theme, played by the orchestra. The main theme is a bright and happy discussion between the solo violin and the accompaniment, followed by a modulation to the dominant D major, then its parallel key D minor" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action05 showInView:self.view];
}
-(IBAction)Ayuda06:(id)sender{
    action06 = [[UIActionSheet alloc] initWithTitle:@"Is a composition by Wolfgang Amadeus Mozart. It was written in July 1776 in Salzburg, possibly for the name day of Mozart's sister, Nannerl on July 26th or her birthday on July 30th.The work is scored for oboe, two horns, two violins, viola and double bass" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action06 showInView:self.view];
    
}
-(IBAction)Ayuda07:(id)sender{
    action07 = [[UIActionSheet alloc] initWithTitle:@"Written for a solo piano. Piano sonatas are usually written in three or four movements, although some piano sonatas have been written with a single movement (Scarlatti, Scriabin), two movements (Beethoven, Haydn), five (Brahms' Third Piano Sonata) or even more movements. The first movement is generally composed in sonata form" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action07 showInView:self.view];
}
-(IBAction)Ayuda08:(id)sender{
    action08 = [[UIActionSheet alloc] initWithTitle:@"Is an extended musical composition in Western classical music, scored almost always for orchestra, usually contains at least one movement or episode composed according to the sonata principle, Many symphonies are tonal works in four movements with the first in sonata form" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action08 showInView:self.view];
}
-(IBAction)Ayuda09:(id)sender{
    action09 = [[UIActionSheet alloc] initWithTitle:@"Was written by Wolfgang Amadeus Mozart in early 1781. The quartet is scored for oboe, violin, viola and cello. In 1780, Mozart was invited to Munich to visit Elector Karl Theodor, who had commissioned the opera Idomeneo for a carnival celebration.While in Munich, Mozart renewed an acquaintance with Friedrich Ramm, a virtuoso oboist in the Munich orchestra. It was for Ramm that Mozart composed the quartet" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action09 showInView:self.view];
}
-(IBAction)Ayuda10:(id)sender{
    action10 = [[UIActionSheet alloc] initWithTitle:@"Is an extended musical composition in Western classical music, scored almost always for orchestra, usually contains at least one movement or episode composed according to the sonata principle, Many symphonies are tonal works in four movements with the first in sonata form" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"oK", nil];
    
    [action10 showInView:self.view];
}

#pragma mark - Sonido

-(IBAction)playSound01:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"11", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);

    
    
}


-(IBAction)Tocar:(id)sender{
    
//    NSURL *soundfile = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"11" ofType:@"mp3"]];
//    
//    if (soundfile) {
//        if ([soundfile playing]) {
//            <#statements#>
//        }
//    }
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"11" ofType:@"mp3"];
//    AVAudioPlayer * theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
//    theAudio.delegate = self;
//    [theAudio play];
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"11" ofType:@"mp3"];
//    if () {
//        <#statements#>
//    }

    NSString *path=[[ NSBundle mainBundle] pathForResource:@"11" ofType:@"mp3"];
    
    sonido01 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido01 play];

    
    
}

-(IBAction)Stop:(id)sender{

    [sonido01 stop];
    
}


-(IBAction)play01:(id)sender{
    
    a01.enabled = TRUE;
    b01.enabled = TRUE;
    c01.enabled = TRUE;
    d01.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"sinfonia25" ofType:@"mp3"];
    
    sonido01 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido01 play];

}
-(IBAction)play02:(id)sender{
    
    a02.enabled = TRUE;
    b02.enabled = TRUE;
    c02.enabled = TRUE;
    d02.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"02" ofType:@"mp3"];
    
    sonido02 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido02 play];

}
-(IBAction)play03:(id)sender{
    
    a03.enabled = TRUE;
    b03.enabled = TRUE;
    c03.enabled = TRUE;
    d03.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"Allegro01" ofType:@"mp3"];
    
    sonido03 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido03 play];

}
-(IBAction)play04:(id)sender{
    
    a04.enabled = TRUE;
    b04.enabled = TRUE;
    c04.enabled = TRUE;
    d04.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"09" ofType:@"mp3"];
    
    sonido04 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido04 play];

}
-(IBAction)play05:(id)sender{
    
    a05.enabled = TRUE;
    b05.enabled = TRUE;
    c05.enabled = TRUE;
    d05.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"12" ofType:@"mp3"];
    
    sonido05 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido05 play];

}
-(IBAction)play06:(id)sender{
    
    a06.enabled = TRUE;
    b06.enabled = TRUE;
    c06.enabled = TRUE;
    d06.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"08" ofType:@"mp3"];
    
    sonido06 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido06 play];

}
-(IBAction)play07:(id)sender{
    
    a07.enabled = TRUE;
    b07.enabled = TRUE;
    c07.enabled = TRUE;
    d07.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"10a" ofType:@"mp3"];
    
    sonido07 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido07 play];

}
-(IBAction)play08:(id)sender{
    
    a08.enabled = TRUE;
    b08.enabled = TRUE;
    c08.enabled = TRUE;
    d08.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"14" ofType:@"mp3"];
    
    sonido08 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido08 play];

}
-(IBAction)play09:(id)sender{
    
    a09.enabled = TRUE;
    b09.enabled = TRUE;
    c09.enabled = TRUE;
    d09.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"11" ofType:@"mp3"];
    
    sonido09 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido09 play];

}
-(IBAction)play10:(id)sender{
    
    a10.enabled = TRUE;
    b10.enabled = TRUE;
    c10.enabled = TRUE;
    d10.enabled = TRUE;
    
    NSString *path=[[ NSBundle mainBundle] pathForResource:@"06" ofType:@"mp3"];
    
    sonido10 =[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]  error:NULL];
    [sonido10 play];

}


//Escena 01 - Respuestas
-(IBAction)E1OpcionA:(id)sender{
    
    puntos = 0;
    
    labelPuntos.alpha = 1.0;
    pts.alpha = 1.0;
    
    a01.enabled = TRUE;
    b01.enabled = FALSE;
    c01.enabled = FALSE;
    d01.enabled = FALSE;
    
    [self detener01];
    //imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
    
    
    if (puntos == 0) {
        
        
        if (resp1 == TRUE) {
            puntos = puntos + 1;
            resp1 = FALSE;
            imagenRespuesta.image =[UIImage imageNamed:@"bien.png"];
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            
        }
        else {
            puntos = puntos;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = 1;
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
        
    }

    
    
}
-(IBAction)E1OpcionB:(id)sender{
    
    labelPuntos.alpha = 1.0;
    pts.alpha = 1.0;
    a01.enabled = FALSE;
    b01.enabled = TRUE;
    c01.enabled = FALSE;
    d01.enabled = FALSE;
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
        
        if (resp1 == TRUE) {
            
            imagenRespuesta.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp1 = FALSE;
        }
        
    }
    
}
-(IBAction)E1OpcionC:(id)sender{
    
    labelPuntos.alpha = 1.0;
    pts.alpha = 1.0;
    a01.enabled = FALSE;
    b01.enabled = FALSE;
    c01.enabled = TRUE;
    d01.enabled = FALSE;
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
        
        if (resp1 == TRUE) {
            
            imagenRespuesta.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp1 = FALSE;
        }
        
    }
    
}
-(IBAction)E1OpcionD:(id)sender{
    
    labelPuntos.alpha = 1.0;
    pts.alpha = 1.0;
    a01.enabled = FALSE;
    b01.enabled = FALSE;
    c01.enabled = FALSE;
    d01.enabled = TRUE;
    
    if (puntos != 0) {
        puntos = 0;
    }
    else {
        
        if (resp1 == TRUE) {
            
            imagenRespuesta.image =[UIImage imageNamed:@"mal.png"];
            puntos = 0;
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
            resp1 = FALSE;
        }
        
    }
    
}


-(void)detener01{
    
    [sonido01 stop];
    
}

//Escena 02 - Respuestas
-(IBAction)E2OpcionA:(id)sender{
    
    
    
    a02.enabled = TRUE;
    b02.enabled = FALSE;
    c02.enabled = FALSE;
    d02.enabled = FALSE;
    
    [self detener02];
    
    if (resp2 == true) {
        //a
        respuestaEscena02 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp2 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }
    
    
}
-(IBAction)E2OpcionB:(id)sender{
    
    
    
    a02.enabled = FALSE;
    b02.enabled = TRUE;
    c02.enabled = FALSE;
    d02.enabled = FALSE;
    
    [self detener02];
    
    //b
    respuestaEscena02 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

    
    
}
-(IBAction)E2OpcionC:(id)sender{
    
    
    a02.enabled = FALSE;
    b02.enabled = FALSE;
    c02.enabled = TRUE;
    d02.enabled = FALSE;
    
    [self detener02];
    
    //b
    respuestaEscena02 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E2OpcionD:(id)sender{
    
    
    a02.enabled = FALSE;
    b02.enabled = FALSE;
    c02.enabled = FALSE;
    d02.enabled = TRUE;
    
    [self detener02];
    
    //b
    respuestaEscena02 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
    
}

-(void)detener02{
    
    [sonido02 stop];
    
}


//Escena 03 - Respuestas
-(IBAction)E3OpcionA:(id)sender{
    
    a03.enabled = TRUE;
    b03.enabled = FALSE;
    c03.enabled = FALSE;
    d03.enabled = FALSE;
    
    [self detener03];
    
    //a
    respuestaEscena03 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E3OpcionB:(id)sender{
    
    a03.enabled = FALSE;
    b03.enabled = TRUE;
    c03.enabled = FALSE;
    d03.enabled = FALSE;
    
    [self detener03];
    
    if (resp3 == true) {
        
        //b
        respuestaEscena03 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp3 = false;
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }


    
}
-(IBAction)E3OpcionC:(id)sender{
    
    a03.enabled = FALSE;
    b03.enabled = FALSE;
    c03.enabled = TRUE;
    d03.enabled = FALSE;
    
    [self detener03];
    
    //c
    respuestaEscena03 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }


    
}
-(IBAction)E3OpcionD:(id)sender{
    
    a03.enabled = FALSE;
    b03.enabled = FALSE;
    c03.enabled = FALSE;
    d03.enabled = TRUE;
    
    [self detener03];
    
    //d
    respuestaEscena03 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}

-(void)detener03{
    
    [sonido03 stop];
    
}

//Escena 04 - Respuestas
-(IBAction)E4OpcionA:(id)sender{
    
    a04.enabled = TRUE;
    b04.enabled = FALSE;
    c04.enabled = FALSE;
    d04.enabled = FALSE;
    
    [self detener04];
    
    //a
    respuestaEscena04 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E4OpcionB:(id)sender{
    
    a04.enabled = FALSE;
    b04.enabled = TRUE;
    c04.enabled = FALSE;
    d04.enabled = FALSE;
    
    [self detener04];
    
    //a
    respuestaEscena04 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E4OpcionC:(id)sender{
    
    a04.enabled = FALSE;
    b04.enabled = FALSE;
    c04.enabled = TRUE;
    d04.enabled = FALSE;
    
    [self detener04];
    
    //a
    respuestaEscena04 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E4OpcionD:(id)sender{
    
    a04.enabled = FALSE;
    b04.enabled = FALSE;
    c04.enabled = FALSE;
    d04.enabled = TRUE;
    
    [self detener04];
    
    //c
    if (resp4 == true) {
        
        respuestaEscena04 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp4 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }}

-(void)detener04{
    
    [sonido04 stop];
    
}

//Escena 05 - Respuestas
-(IBAction)E5OpcionA:(id)sender{
    
    a05.enabled = TRUE;
    b05.enabled = FALSE;
    c05.enabled = FALSE;
    d05.enabled = FALSE;
    
    [self detener05];
    //a
    respuestaEscena05 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E5OpcionB:(id)sender{
    
    a05.enabled = FALSE;
    b05.enabled = TRUE;
    c05.enabled = FALSE;
    d05.enabled = FALSE;
    
    [self detener05];
    respuestaEscena05 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E5OpcionC:(id)sender{
    
    a05.enabled = FALSE;
    b05.enabled = FALSE;
    c05.enabled = TRUE;
    d05.enabled = FALSE;
    
    [self detener05];
    respuestaEscena05 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E5OpcionD:(id)sender{
    
    a05.enabled = FALSE;
    b05.enabled = FALSE;
    c05.enabled = FALSE;
    d05.enabled = TRUE;
    
    [self detener05];
    
    //c
    if (resp5 == true) {
        
        respuestaEscena05 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp5 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }
}

-(void)detener05{
    
    [sonido05 stop];
    
}

//Escena 06 - Respuestas
-(IBAction)E6OpcionA:(id)sender{
    
    a06.enabled = TRUE;
    b06.enabled = FALSE;
    c06.enabled = FALSE;
    d06.enabled = FALSE;
    
    [self detener06];
    
    respuestaEscena06 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E6OpcionB:(id)sender{
    
    a06.enabled = FALSE;
    b06.enabled = TRUE;
    c06.enabled = FALSE;
    d06.enabled = FALSE;
    
    [self detener06];
    
    respuestaEscena06 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E6OpcionC:(id)sender{
    
    a06.enabled = FALSE;
    b06.enabled = FALSE;
    c06.enabled = TRUE;
    d06.enabled = FALSE;
    
    [self detener06];
    
    if (resp6 == true) {
        
        respuestaEscena06 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp6 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }

}
-(IBAction)E6OpcionD:(id)sender{
    
    a06.enabled = FALSE;
    b06.enabled = FALSE;
    c06.enabled = FALSE;
    d06.enabled = TRUE;
    
    [self detener06];
    
    respuestaEscena06 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}

-(void)detener06{
    
    [sonido06 stop];
    
}

//Escena 07 - Respuestas
-(IBAction)E7OpcionA:(id)sender{
    
    a07.enabled = TRUE;
    b07.enabled = FALSE;
    c07.enabled = FALSE;
    d07.enabled = FALSE;
    
    [self detener07];
    
    respuestaEscena07 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E7OpcionB:(id)sender{
    
    a07.enabled = FALSE;
    b07.enabled = TRUE;
    c07.enabled = FALSE;
    d07.enabled = FALSE;
    
    [self detener07];
    
    respuestaEscena07 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
}
-(IBAction)E7OpcionC:(id)sender{
    
    a07.enabled = FALSE;
    b07.enabled = FALSE;
    c07.enabled = TRUE;
    d07.enabled = FALSE;
    
    [self detener07];
    
    if (resp7 == true) {
        
        respuestaEscena07 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp7 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }
    
}
-(IBAction)E7OpcionD:(id)sender{
    
    a07.enabled = FALSE;
    b07.enabled = FALSE;
    c07.enabled = FALSE;
    d07.enabled = TRUE;
    
    [self detener07];
    
    respuestaEscena07 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}

-(void)detener07{
    
    [sonido07 stop];
    
}

-(IBAction)E8OpcionA:(id)sender{
    
    a08.enabled = TRUE;
    b08.enabled = FALSE;
    c08.enabled = FALSE;
    d08.enabled = FALSE;
    
    [self detener08];
    
    respuestaEscena08 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

        
}
-(IBAction)E8OpcionB:(id)sender{
    
    a08.enabled = FALSE;
    b08.enabled = TRUE;
    c08.enabled = FALSE;
    d08.enabled = FALSE;
    
    [self detener08];
    
    respuestaEscena08 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }

}
-(IBAction)E8OpcionC:(id)sender{
    
    a08.enabled = FALSE;
    b08.enabled = FALSE;
    c08.enabled = TRUE;
    d08.enabled = FALSE;
    
    [self detener08];
    
    if (resp8 == true) {
        
        respuestaEscena08 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp8 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }
    

    
}
-(IBAction)E8OpcionD:(id)sender{
    
    a08.enabled = FALSE;
    b08.enabled = FALSE;
    c08.enabled = FALSE;
    d08.enabled = TRUE;
    
    [self detener08];
    
    
    respuestaEscena08 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
       
}

-(void)detener08{
    
    [sonido08 stop];
    
}

//Escena 09 - Respuestas
-(IBAction)E9OpcionA:(id)sender{
    
    a09.enabled = TRUE;
    b09.enabled = FALSE;
    c09.enabled = FALSE;
    d09.enabled = FALSE;
    
    
    [self detener09];
    
    respuestaEscena09 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E9OpcionB:(id)sender{
    
    a09.enabled = FALSE;
    b09.enabled = TRUE;
    c09.enabled = FALSE;
    d09.enabled = FALSE;
    
    [self detener09];
    
    respuestaEscena09 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E9OpcionC:(id)sender{
    
    a09.enabled = FALSE;
    b09.enabled = FALSE;
    c09.enabled = TRUE;
    d09.enabled = FALSE;
    
    [self detener09];
    
    respuestaEscena09 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E9OpcionD:(id)sender{
    
    a09.enabled = FALSE;
    b09.enabled = FALSE;
    c09.enabled = FALSE;
    d09.enabled = TRUE;
    
    [self detener09];
    
    if (resp9 == true) {
        
        respuestaEscena09 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp9 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }

    
}
-(void)detener09{
    
    [sonido09 stop];
    
}

//Escena 10 - Respuestas
-(IBAction)E10OpcionA:(id)sender{
    
    a10.enabled = TRUE;
    b10.enabled = FALSE;
    c10.enabled = FALSE;
    d10.enabled = FALSE;
    
    [self detener10];
    
    respuestaEscena10 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E10OpcionB:(id)sender{
    
    a10.enabled = FALSE;
    b10.enabled = TRUE;
    c10.enabled = FALSE;
    d10.enabled = FALSE;
    
    [self detener10];
    
    if (resp10 == true) {
        
        respuestaEscena10 = TRUE;
        imagenRespuesta.image = [UIImage imageNamed:@"bien.png"];
        puntos = puntos + 1;
        resp10 = false;
        
        if (puntos <= 0) {
            labelPuntos.text = @"1";
            labelPuntos.hidden = FALSE;
        }else {
            labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
            labelPuntos.hidden = FALSE;
        }
        
    }
    else {
        puntos = puntos;
    }

}
-(IBAction)E10OpcionC:(id)sender{
    
    a10.enabled = FALSE;
    b10.enabled = FALSE;
    c10.enabled = TRUE;
    d10.enabled = FALSE;
    
    [self detener10];
    
    respuestaEscena10 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(IBAction)E10OpcionD:(id)sender{
    
    a10.enabled = FALSE;
    b10.enabled = FALSE;
    c10.enabled = FALSE;
    d10.enabled = TRUE;
    
    [self detener10];
    
    respuestaEscena10 = FALSE;
    imagenRespuesta.image = [UIImage imageNamed:@"mal.png"];
    //puntos = puntos - 1;
    puntos = puntos;
    if (puntos < 0) {
        labelPuntos.text = @"0";
        labelPuntos.hidden = FALSE;
    }
    else {
        labelPuntos.text = [NSString stringWithFormat:@"%d", puntos];
        labelPuntos.hidden = FALSE;
    }
    
}
-(void)detener10{
    
    [sonido10 stop];
    
}

-(int)Aleatorio{
    
    int randomNumber = arc4random()%5;
    
    return randomNumber;
}



#pragma mark - Tweet
- (IBAction)showTweetSheet{
    
    
    int valor = [self Aleatorio];
    NSString *img = @"06.png";
    
    switch (valor) {
        case 0:
            img = @"06.png";
            break;
        case 1:
            img = @"02.png";
            break;
        case 2:
            img = @"04.png";
            break;
        case 3:
            img = @"04.png";
            break;
        case 4:
            img = @"05.png";
            break;
        case 5:
            img = @"06.png";
            break;

        default:
            break;
    }
    
    //  Create an instance of the Tweet Sheet
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    
    // Sets the completion handler.  Note that we don't know which thread the
    // block will be called on, so we need to ensure that any UI updates occur
    // on the main queue
    tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result) {
        switch(result) {
            case TWTweetComposeViewControllerResultCancelled:
                //  This means the user cancelled without sending the Tweet
                break;
            case TWTweetComposeViewControllerResultDone:
                //  This means the user hit 'Send'
                break;
        }
        
        
        //  dismiss the Tweet Sheet 
        dispatch_async(dispatch_get_main_queue(), ^{            
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed."); 
            }];
        });
    };
    
    NSString *puntaje = labelPuntos.text;
    //NSString *mensaje = @"Im just using the Amadeus app try it thats my score %@";
    NSString *mensaje01 = [NSString stringWithFormat:@"I'm using the #AmadeusW app this is my score %@pts, can you beat me??", puntaje];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje01]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
//        if (![tweetSheet addImage:img.image]) 
//        {
    
    
    
    
            if (![tweetSheet addImage:[UIImage imageNamed:img]]) {
            NSLog(@"Unable to add the image!");
        }
    
    //  Add an URL to the Tweet.  You can add multiple URLs.
    /* if (![tweetSheet addURL:[NSURL URLWithString:@"http://twitter.com/"]]){
     NSLog(@"Unable to add the URL!");
     }*/
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];
    
    
}

@end
