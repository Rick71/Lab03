//
//  NuevoViewController.h
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"


//Para poder trabajar con la camara
@interface Nuevo : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate>
//Fields

@property (strong, nonatomic) IBOutlet UITextField *imputNombre;

@property (strong, nonatomic) IBOutlet UITextField *imputEstado;
@property (strong, nonatomic) IBOutlet UITextField *imputYouTube;

//Image View
@property (strong, nonatomic) IBOutlet UIImageView *inputFoto;

//Acciones
- (IBAction)accionGuardar:(id)sender;
- (IBAction)accionRegresar:(id)sender;
- (IBAction)accionFoto:(id)sender;


@end
