//
//  ViewController.m
//  ListadoMap
//
//  Created by Alumno on 28/12/16.
//  Copyright © 2016 Alumno. All rights reserved.
//

#import "ViewController.h"
#import "DataSourceTabla.h"

@interface ViewController ()

@property (weak,nonatomic) IBOutlet UITableView* tablaRestaurante;

@property DataSourceTabla* dst;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray* arrayRestaurantes=[[NSMutableArray alloc]init];
    Restaurante* restaurante1=[[Restaurante alloc]initConNombre:@"DSTAGE" conDescripcion:@"Comida internacional, contemporánea" conLongitud:-3.6964 yLatitud:40.4246];
    Restaurante* restaurante2=[[Restaurante alloc]initConNombre:@"Arbore da Veira" conDescripcion:@"Mediterránea, Europea, Española, Menú para celíacos" conLongitud:-8.4039989 yLatitud:43.3691822];
    Restaurante* restaurante3=[[Restaurante alloc]initConNombre:@"La Bombi" conDescripcion:@"Marisco, Mediterránea, Europea, Española" conLongitud:-3.7969354 yLatitud:43.4643137];
    Restaurante* restaurante4=[[Restaurante alloc]initConNombre:@"Restaurante El Faro de Cádiz" conDescripcion:@"Marisco, Mediterránea, española, sopas, menús para celíacos" conLongitud:-6.3037417 yLatitud:36.5286361];
    Restaurante* restaurante5=[[Restaurante alloc]initConNombre:@"Restaurante Del Arco" conDescripcion:@"Mediterránea, europea, internacional, menús para celíacos" conLongitud:-5.8572936 yLatitud:43.3613314];
    
    [arrayRestaurantes addObject:restaurante1];
    [arrayRestaurantes addObject:restaurante2];
    [arrayRestaurantes addObject:restaurante3];
    [arrayRestaurantes addObject:restaurante4];
    [arrayRestaurantes addObject:restaurante5];
    
    
    
    _dst =[DataSourceTabla new];
    _dst.arrayRestaurantes=arrayRestaurantes;
    _tablaRestaurante.dataSource=_dst;
    _tablaRestaurante.delegate=self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    long posicion=indexPath.row;
    Restaurante* restaurante=[_dst restauranteAt:posicion];
    
    [self performSegueWithIdentifier:@"paginaDetalle" sender:restaurante];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"paginaDetalle"]){
        NSObject* controladorDestino=segue.destinationViewController;
        
        [controladorDestino setValue:sender forKey:@"restauranteSeleccionado"];
    }
}
@end
