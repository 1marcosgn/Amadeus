//
//  Test.h
//  Amadeus
//
//  Created by Claudia Oliva on 24/04/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface Test : UIViewController <UIActionSheetDelegate>{
    
    IBOutlet UIActionSheet *action01;
    IBOutlet UIActionSheet *action02;
    IBOutlet UIActionSheet *action03;
    IBOutlet UIActionSheet *action04;
    IBOutlet UIActionSheet *action05;
    IBOutlet UIActionSheet *action06;
    IBOutlet UIActionSheet *action07;
    IBOutlet UIActionSheet *action08;
    IBOutlet UIActionSheet *action09;
    IBOutlet UIActionSheet *action10;
    
    AVAudioPlayer *sonido01;
    AVAudioPlayer *sonido02;
    AVAudioPlayer *sonido03;
    AVAudioPlayer *sonido04;
    AVAudioPlayer *sonido05;
    AVAudioPlayer *sonido06;
    AVAudioPlayer *sonido07;
    AVAudioPlayer *sonido08;
    AVAudioPlayer *sonido09;
    AVAudioPlayer *sonido10;
    
    IBOutlet UILabel *labelPuntos;
    IBOutlet UILabel *etiquetaPrueba;
    
    IBOutlet UIImageView *imagenRespuesta;
    
    IBOutlet UIButton *a01;
    IBOutlet UIButton *a02;
    IBOutlet UIButton *a03;
    IBOutlet UIButton *a04;
    IBOutlet UIButton *a05;
    IBOutlet UIButton *a06;
    IBOutlet UIButton *a07;
    IBOutlet UIButton *a08;
    IBOutlet UIButton *a09;
    IBOutlet UIButton *a10;
    
    IBOutlet UIButton *b01;
    IBOutlet UIButton *b02;
    IBOutlet UIButton *b03;
    IBOutlet UIButton *b04;
    IBOutlet UIButton *b05;
    IBOutlet UIButton *b06;
    IBOutlet UIButton *b07;
    IBOutlet UIButton *b08;
    IBOutlet UIButton *b09;
    IBOutlet UIButton *b10;
    
    IBOutlet UIButton *c01;
    IBOutlet UIButton *c02;
    IBOutlet UIButton *c03;
    IBOutlet UIButton *c04;
    IBOutlet UIButton *c05;
    IBOutlet UIButton *c06;
    IBOutlet UIButton *c07;
    IBOutlet UIButton *c08;
    IBOutlet UIButton *c09;
    IBOutlet UIButton *c10;
    
    IBOutlet UIButton *d01;
    IBOutlet UIButton *d02;
    IBOutlet UIButton *d03;
    IBOutlet UIButton *d04;
    IBOutlet UIButton *d05;
    IBOutlet UIButton *d06;
    IBOutlet UIButton *d07;
    IBOutlet UIButton *d08;
    IBOutlet UIButton *d09;
    IBOutlet UIButton *d10;
    
    IBOutlet UILabel *pruebaLabel02;
    IBOutlet UILabel *pts;
    
}

-(IBAction)Ayuda01:(id)sender;
-(IBAction)Ayuda02:(id)sender;
-(IBAction)Ayuda03:(id)sender;
-(IBAction)Ayuda04:(id)sender;
-(IBAction)Ayuda05:(id)sender;
-(IBAction)Ayuda06:(id)sender;
-(IBAction)Ayuda07:(id)sender;
-(IBAction)Ayuda08:(id)sender;
-(IBAction)Ayuda09:(id)sender;
-(IBAction)Ayuda10:(id)sender;


-(IBAction)playSound01:(id)sender;
-(IBAction)Tocar:(id)sender;
-(IBAction)Stop:(id)sender;

-(IBAction)play01:(id)sender;
-(IBAction)play02:(id)sender;
-(IBAction)play03:(id)sender;
-(IBAction)play04:(id)sender;
-(IBAction)play05:(id)sender;
-(IBAction)play06:(id)sender;
-(IBAction)play07:(id)sender;
-(IBAction)play08:(id)sender;
-(IBAction)play09:(id)sender;
-(IBAction)play10:(id)sender;

//-(IBAction)detener01;
//-(IBAction)detener02;
//-(IBAction)detener03;
//-(IBAction)detener04;
//-(IBAction)detener05;
//-(IBAction)detener06;
//-(IBAction)detener07;
//-(IBAction)detener08;
//-(IBAction)detener09;
//-(IBAction)detener10;


//Escena 01 - Respuestas
-(IBAction)E1OpcionA:(id)sender;
-(IBAction)E1OpcionB:(id)sender;
-(IBAction)E1OpcionC:(id)sender;
-(IBAction)E1OpcionD:(id)sender;

//Escena 02 - Respuestas
-(IBAction)E2OpcionA:(id)sender;
-(IBAction)E2OpcionB:(id)sender;
-(IBAction)E2OpcionC:(id)sender;
-(IBAction)E2OpcionD:(id)sender;

//Escena 03 - Respuestas
-(IBAction)E3OpcionA:(id)sender;
-(IBAction)E3OpcionB:(id)sender;
-(IBAction)E3OpcionC:(id)sender;
-(IBAction)E3OpcionD:(id)sender;

//Escena 04 - Respuestas
-(IBAction)E4OpcionA:(id)sender;
-(IBAction)E4OpcionB:(id)sender;
-(IBAction)E4OpcionC:(id)sender;
-(IBAction)E4OpcionD:(id)sender;

//Escena 05 - Respuestas
-(IBAction)E5OpcionA:(id)sender;
-(IBAction)E5OpcionB:(id)sender;
-(IBAction)E5OpcionC:(id)sender;
-(IBAction)E5OpcionD:(id)sender;

//Escena 06 - Respuestas
-(IBAction)E6OpcionA:(id)sender;
-(IBAction)E6OpcionB:(id)sender;
-(IBAction)E6OpcionC:(id)sender;
-(IBAction)E6OpcionD:(id)sender;

//Escena 07 - Respuestas
-(IBAction)E7OpcionA:(id)sender;
-(IBAction)E7OpcionB:(id)sender;
-(IBAction)E7OpcionC:(id)sender;
-(IBAction)E7OpcionD:(id)sender;

//Escena 08 - Respuestas
-(IBAction)E8OpcionA:(id)sender;
-(IBAction)E8OpcionB:(id)sender;
-(IBAction)E8OpcionC:(id)sender;
-(IBAction)E8OpcionD:(id)sender;

//Escena 09 - Respuestas
-(IBAction)E9OpcionA:(id)sender;
-(IBAction)E9OpcionB:(id)sender;
-(IBAction)E9OpcionC:(id)sender;
-(IBAction)E9OpcionD:(id)sender;

//Escena 10 - Respuestas
-(IBAction)E10OpcionA:(id)sender;
-(IBAction)E10OpcionB:(id)sender;
-(IBAction)E10OpcionC:(id)sender;
-(IBAction)E10OpcionD:(id)sender;


-(IBAction)showTweetSheet;

@end