//
//  ViewController.m
//  Categorias
//
//  Created by Luis Ramon Valencia Aguayo on 17/08/24.
//  Copyright © 2024 Luis Ramon Valencia Aguayo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController (){
    NSArray *IOSArray;
}
@end

@implementation ViewController
@synthesize PickerCategorias, labelCategoriaSelect, btnCategorias;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    IOSArray = [[NSArray alloc]initWithObjects: @"IPhone", @"IPad",@"MAC", nil];
    
    // redimencionar el label para que pueda entrar todo el texto
    labelCategoriaSelect.numberOfLines = 30;
    labelCategoriaSelect.adjustsFontSizeToFitWidth = true;
    
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    switch (component) {
        case 0:
            return IOSArray.count;
        break;
        default:
            return 0;
        break;
    }
    return 0;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0:
            return [IOSArray objectAtIndex:row];
        break;
        default:
            return 0;
        break;
    }
}
- (IBAction)btnCate:(id)sender {
    
    NSString *categoria = [NSString stringWithFormat:@"%@",[IOSArray objectAtIndex:[PickerCategorias selectedRowInComponent:0]]]; //@"Diste click al boton 1";
    
    NSArray *arrayIphone = [[NSArray alloc]initWithObjects:
                            @"Samsung fabrica los procesadores de los iPhone. Sí, es un poco chocante ya que se trata de competidores feroces en esto de los smartphones pero Apple confía desde hace un tiempo la fabricación de sus procesadores a la compañía asiática, aunque del diseño de los mismos se encargan en Apple, claro.",
                            @"Para fabricar el iPhone, Apple ha registrado hasta 200 patentes hasta la fecha. Así se aseguran de que ningún competidor puede copiarles, por eso estos dispositivos siguen siendo realmente únicos.",
                            @"Observa el objetivo de tu móvil, está fabricado en cristal de zafiro, al igual que el botón TouchID . Apple lleva usando este material desde el modelo 4.",
                            @"El iPhone 5 tiene más capacidad de procesamiento que las computadoras que lleva el Curiosity, el robot que se envió a Marte para reconocer el terreno en 2011. Sí, llevas más potencia de cálculo en tu bolsillo que lo que enviamos a Marte hace 5 años, y no digamos ya de las primeras misiones a la Luna",
                            @"Siempre aparece la misma hora en los iPhone que aparecen en los anuncios de Apple: los eventos de la empresa de la manzana empiezan a las 9 de la mañana, y los anuncios están preparados para que aparezcan a los 40 minutos de empezar la presentación. Aunque se han dado cuenta que casi nunca se cumplen exactos esos 40 minutos, por lo que recientemente han puesto la hora en los modelos que aparecen en los anuncios a las 9:41.",
                            nil];
    NSArray *arrayIPhad = [[NSArray alloc]initWithObjects:
                           @"Un récord de ventas: el día de su lanzamiento, se vendieron 300.000 iPads, se descargaron un millón de apps y 250.000 iBooks. Desde su lanzamiento, se han vendido más de 400 millones de iPads. Es decir, más o menos se venden 79 cada minuto.",
                            @"El accesorio más extraño: Apple ofrece una gran cantidad de accesorios para todos sus dispositivos, pero el iPad se lleva el premio al accesorio más inútil: un chaleco compatible con iPad.",
                            @"Macintosh Folio: antes de iPad, Apple estuvo trabajando en una tablet con stylus (bolígrafo). Estaba diseñada para ser un ordenador personal de tamaño reducido. El diseño fue realizado por Jonathan Ive, aunque Apple decidió no continuar trabajando en esta idea y descartó el proyecto.",
                            @"¿Qué fue antes?: Aunque el iPhone se presentó primero, Steve Jobs afirmó que el iPad empezó a desarollarse primero. Jonathan Ive y su estudio de Apple Inc. estaban trabajando en un prototipo de tableta muy básica desde 2004. Sin embargo, Jobs y Ive decidieron que el smartphone era más importante y adelantaron su desarrollo.",
                            @"Proyecto k48: Durante el desarrollo del primer iPad el nombre en clave del proyecto era K48. Esto se reveló años después durante un juicio por una supuesta filtración de datos en los iPads.",
                          nil];

    NSArray *arrayMAC= [[NSArray alloc]initWithObjects:
                        @"La beta pública de Mac OS X se liberó el 13 de septiembre de 2000. Con esta versión los usuarios podían hacerse una idea de cómo iba a ser la plataforma. Al mismo tiempo, sirvió para que los desarrolladores se pusieron manos a la obra antes de que la versión final saliera.",
                        @"Mac OS X v10.0 se lanzaba el 24 de marzo de 2001, con muy buenas críticas por su estabilidad, reliabilidad y seguridad basadas en Unix y su diseño simple que se servía de elementos luminosos y semitransparentes. Su lentitud fue la principal queja del software (en gran medida porque ejecutaba las aplicaciones mediante una capa de compatibilidad).",
                        @" La gran base del desarrollo de Mac OS X proviene de la compañía NeXT, fundada por Jobs cuando abandonó Apple en 1985 y adquirida posteriormente por los de Cupertino en 1996.",
                        @" En los orígenes de Mac OS X se contaba con 350 programas o aplicaciones preparados para la plataforma. Entre ellos estaban iMovie 2, iTunes y una versión previa de Apple Works 6.1.",
                        @"La popular interfaz Aqua se estrenó con la primera edición de Mas OS X, denominada 10.0 o ‘Cheetah’.",
                        nil];
    
    //NSLog(@"Le diste click a %@ seleccionando el indice %@", categoria,arrayIphone[arc4random_uniform(5)]);
    
    //@"IPhone", @"IPad",@"MAC"
    if ([categoria  isEqual: @"IPhone"]) {
        labelCategoriaSelect.text = arrayIphone[arc4random_uniform(5)];
    } else if([categoria  isEqual: @"IPad"]){
        labelCategoriaSelect.text = arrayIPhad[arc4random_uniform(5)];
    } else if([categoria  isEqual: @"MAC"]){
        labelCategoriaSelect.text = arrayMAC[arc4random_uniform(5)];
    } else{
        labelCategoriaSelect.text = @"";
    }
    
}

@end
    

