//
//  ViewControllerDetalle.h
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurante.h"
#import <MapKit/MapKit.h>

@interface ViewControllerDetalle : UIViewController<MKMapViewDelegate>

@property Restaurante* restauranteSeleccionado;

@end
