//
//  Detalle.h
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Detalle : UIViewController

//Table View
@property (strong, nonatomic) IBOutlet UITableView *tableDatos;

//Acciones
- (IBAction)accionVerMas:(id)sender;
- (IBAction)accionCompartir:(id)sender;
- (IBAction)accionRegresar:(id)sender;


@end
