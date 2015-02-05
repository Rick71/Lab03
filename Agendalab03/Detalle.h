//
//  Detalle.h
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import <Twitter/Twitter.h>

@interface Detalle : UIViewController<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>
//Table View
@property (strong, nonatomic) IBOutlet UITableView *tableDatos;

//Acciones
- (IBAction)accionVerMas:(id)sender;
- (IBAction)accionCompartir:(id)sender;
- (IBAction)accionRegresar:(id)sender;
//Label

@property (strong, nonatomic) IBOutlet UILabel *labelTitulo;

@end
