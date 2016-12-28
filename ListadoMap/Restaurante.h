//
//  Restaurante.h
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject

@property NSString* nombre;
@property NSString* descripcion;
@property double longitud;
@property double latitud;

-(id) initConNombre:(NSString*)nombre conDescripcion:(NSString*)descripcion conLongitud:(double)longitud yLatitud:(double)latitud;
@end
