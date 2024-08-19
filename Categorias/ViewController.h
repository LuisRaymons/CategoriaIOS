//
//  ViewController.h
//  Categorias
//
//  Created by Luis Ramon Valencia Aguayo on 17/08/24.
//  Copyright © 2024 Luis Ramon Valencia Aguayo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *PickerCategorias;
@property (weak, nonatomic) IBOutlet UILabel *labelCategoriaSelect;
@property (weak, nonatomic) IBOutlet UIButton *btnCategorias;

@end

