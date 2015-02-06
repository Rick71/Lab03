//
//  ViewController.h
//  Agendalab03
//
//  Created by Ricardo Vera on 03/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface Home : UIViewController

//Acciones
- (IBAction)accionNuevo:(id)sender;
- (IBAction)accionEditar:(id)sender;
- (IBAction)accionBorrar:(id)sender;
- (IBAction)accionLista:(id)sender;

@end

