//
//  Listado.m
//  Agendalab03
//
//  Created by Ricardo Vera on 04/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Listado.h"
#import "AgendaList.h"

NSMutableArray *ListadoDatos;
int ListadoIndice;



@interface Listado ()

@end

@implementation Listado

- (void)viewDidLoad {
    [super viewDidLoad];
    idTemp = nil;
    [self initController];

  
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController{
    
    ListadoDatos = [[DBManager getSharedInstance]listDB:@"select agendaid, nombre, estado, youtube, foto from agenda"];
    //NSLog(@"%@", ListadoDatos);
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
    [self performSegueWithIdentifier:@"sagaListadoHome" sender:self];
}

- (IBAction)accionEditar:(id)sender {
    [self performSegueWithIdentifier:@"sagaListadoNuevo" sender:self];}

- (IBAction)accionEliminar:(id)sender {
    NSString *query = [NSString stringWithFormat: @"DELETE FROM agenda WHERE agendaid=%@;", idTemp];
    if([[DBManager getSharedInstance]saveDB:query]){
        [self initController];
        self.tableDatos.reloadData;
    }
}


/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [ListadoDatos count];
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DetalleList";
    AgendaList *cell = (AgendaList *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil){
        cell = [[AgendaList alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    NSMutableArray *dato = ListadoDatos[indexPath.row];
    cell.labelNombre.text = [dato objectAtIndex:1];
    cell.labelEstado.text = [dato objectAtIndex:2];
    cell.foto.image = [UIImage imageWithData:[dato objectAtIndex:4]];
    CALayer * l = [cell.foto layer];
    [l setMasksToBounds:YES];
    [l setCornerRadius:30.0];
    return cell;
}


//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray *dato = ListadoDatos[indexPath.row];
    ListadoIndice = indexPath.row;
    idTemp = [dato objectAtIndex:0];
    self.labelTitulo.text = [dato objectAtIndex:1];
    
    
    
}

@end
