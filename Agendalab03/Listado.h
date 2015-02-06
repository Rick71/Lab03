//
//  Listado.h
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface Listado : UIViewController<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>


//Table View
@property (strong, nonatomic) IBOutlet UITableView *tableDatos;
@property (strong, nonatomic) IBOutlet UILabel *labelTitulo;

//Acciones
- (IBAction)accionRegresar:(id)sender;
- (IBAction)accionEditar:(id)sender;
- (IBAction)accionEliminar:(id)sender;

@end
