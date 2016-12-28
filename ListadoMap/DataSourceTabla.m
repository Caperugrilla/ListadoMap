//
//  DataSourceTabla.m
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "DataSourceTabla.h"

@implementation DataSourceTabla

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString* idCelda=@"celda";
    
    UITableViewCell* celda = nil;
    celda=[tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda == nil){
        
        celda=[[UITableViewCell alloc]initWithStyle:
               UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    
    NSInteger posicion= [indexPath row];//Sacamos la posición que esta entrando
    Restaurante* restaurante =[_arrayRestaurantes objectAtIndex:posicion];
    
    celda.textLabel.text=restaurante.nombre;
    
    return celda;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayRestaurantes.count;
}


-(Restaurante*)restauranteAt:(long)posicion{
    Restaurante* r= _arrayRestaurantes[posicion];
    return r;
}

@end
