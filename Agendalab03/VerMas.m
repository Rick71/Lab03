//
//  VerMas.m
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "VerMas.h"
NSString *idTemp;

@interface VerMas ()

@end

@implementation VerMas

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(idTemp);
    [self initController];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//agregando funcionalidad a la ventana ver mas.
-(void)initController{
    NSMutableArray *dato = [[DBManager getSharedInstance]consultaDB:[NSString stringWithFormat: @"select agendaid, nombre, estado, youtube, foto FROM agenda WHERE agendaid=%@;", idTemp]];
    self.lblNombre.text = [dato objectAtIndex:1];

    
    self.lblEstado.text = [dato objectAtIndex:2];
    self.Foto.image = [UIImage imageWithData:[dato objectAtIndex:4]];
    NSURL *url = [NSURL URLWithString:[dato objectAtIndex:3]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.Video loadRequest:request];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)accionRegresar:(id)sender {
    [self performSegueWithIdentifier:@"sagaVerMasDetalle" sender:self];}
@end
