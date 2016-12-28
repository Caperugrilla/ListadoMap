//
//  Restaurante.m
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

-(id) initConNombre:(NSString*)nombre conDescripcion:(NSString*)descripcion conLongitud:(double)longitud yLatitud:(double)latitud{
    if(self=[super init]){
        self.nombre=nombre;
        self.descripcion=descripcion;
        self.longitud=longitud;
        self.latitud=latitud;
    }
    
    return self;
}
@end
