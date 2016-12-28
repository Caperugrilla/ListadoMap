//
//  ViewControllerDetalle.m
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "ViewControllerDetalle.h"

#import "Restaurante.h"
#import "DataSourceTabla.h"

@interface ViewControllerDetalle ()

@property (weak,nonatomic) IBOutlet UITextField* tfNombre;
@property (weak,nonatomic) IBOutlet UITextField* tfDescripcion;

@property (weak, nonatomic) IBOutlet MKMapView* mapa;


@end

@implementation ViewControllerDetalle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString* nombre=_restauranteSeleccionado.nombre;
    NSString* descripcion=_restauranteSeleccionado.descripcion;
    
    NSString* resultadoNombre=[NSString stringWithFormat:@"%@",nombre];
    NSString* resultadoDescripcion=[NSString stringWithFormat:@"%@",descripcion];
    
    _tfNombre.text=resultadoNombre;
    _tfDescripcion.text=resultadoDescripcion;
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    double longitud=_restauranteSeleccionado.longitud;
    double latitud=_restauranteSeleccionado.latitud;
    
    CLLocationCoordinate2D location;
    location.latitude=latitud;
    location.longitude=longitud;
    
    MKCoordinateRegion region=MKCoordinateRegionMakeWithDistance(location, 50, 50);
    
    _mapa.region=region;
    _mapa.delegate=self;
    
    MKPointAnnotation* nota=[MKPointAnnotation new];
    nota.coordinate=location;
    nota.title=_restauranteSeleccionado.nombre;
    nota.subtitle=_restauranteSeleccionado.descripcion;
    
    [_mapa addAnnotation:nota];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadData:(Restaurante*)restaurante{
    _restauranteSeleccionado=restaurante;
}

-(MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    NSLog(@"Marcamos un punto");
    return nil;
    
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
