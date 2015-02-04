//
//  VerMas.h
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VerMas : UIViewController
//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblNombre;
@property (strong, nonatomic) IBOutlet UILabel *lblEstado;

//Image View
@property (strong, nonatomic) IBOutlet UIImageView *Foto;

//Web View
@property (strong, nonatomic) IBOutlet UIWebView *Video;

//acciones
- (IBAction)accionRegresar:(id)sender;






@end
