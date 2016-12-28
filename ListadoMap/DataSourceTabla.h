//
//  DataSourceTabla.h
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurante.h"

@interface DataSourceTabla : NSObject<UITableViewDataSource>

@property NSArray* arrayRestaurantes;

-(Restaurante*)restauranteAt:(long)posicion;
@end
