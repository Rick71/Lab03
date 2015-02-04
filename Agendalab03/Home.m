//
//  ViewController.m
//  Agendalab03
//
//  Created by Ricardo Vera on 03/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)accionNuevo:(id)sender {
    [self performSegueWithIdentifier:@"sagaHomeNuevo" sender:self];
}

- (IBAction)accionEditar:(id)sender {
    [self performSegueWithIdentifier:@"sagaHomeListado" sender:self];}

- (IBAction)accionBorrar:(id)sender {
    [self performSegueWithIdentifier:@"sagaHomeListado" sender:self];}

- (IBAction)accionLista:(id)sender {
    [self performSegueWithIdentifier:@"sagaHomeDetalle" sender:self];
}
@end
