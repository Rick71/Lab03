//
//  Listado.h
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Listado : UIViewController

//Table View
@property (strong, nonatomic) IBOutlet UITableView *tableDatos;

//Acciones
- (IBAction)accionRegresar:(id)sender;
- (IBAction)accionEditar:(id)sender;
- (IBAction)accionEliminar:(id)sender;


@end
