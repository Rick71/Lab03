//
//  AgendaList.h
//  Agendalab03
//
//  Created by Ricardo Vera on 05/02/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgendaList : UITableViewCell
//Image view
@property (strong, nonatomic) IBOutlet UIImageView *foto;
@property (strong, nonatomic) IBOutlet UILabel *labelEstado;
@property (strong, nonatomic) IBOutlet UILabel *labelNombre;


@end
