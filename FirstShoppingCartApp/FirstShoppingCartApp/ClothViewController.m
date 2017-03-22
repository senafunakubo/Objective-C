//
//  ClothViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-08.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ClothViewController.h"
#import "Cloth.h"

@interface ClothViewController ()

@end

@implementation ClothViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Cloth * cloth = [[Cloth alloc]initWithProductId:(int)(self.clothIDTextField.text.integerValue)
                                        productName:self.clothNameTextField.text
                                       productPrice:self.clothPriceTextField.text.floatValue
                               productMadeInCountry:self.clothMadeInCountryTextField.text
                                           clothMaterials:self.clothMaterialArray];
    
    self.cloth = cloth;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddClothButton:(UIButton *)sender {
    self.cloth.productID = (int)(self.clothIDTextField.text.integerValue);
    self.cloth.productName = self.clothNameTextField.text;
    self.cloth.productPrice = self.clothPriceTextField.text.floatValue;
    self.cloth.productMadeInCountry = self.clothMadeInCountryTextField.text;

    NSArray * materialCodeArray = [self.clothMaterialsCodeTextField.text componentsSeparatedByString:@","];
    NSArray * materialNameArray = [self.clothMaterialsNameTextField.text componentsSeparatedByString:@","];
    
    self.clothMaterialArray = [[NSMutableArray alloc]init];
    
    for(int i = 0; i < materialCodeArray.count; i++)
    {
        NSInteger materialCode = [materialCodeArray[i] integerValue];
        NSString * materialName = materialNameArray[i];
        
        Material * material = [[Material alloc]initWithMaterialCode:(int)(materialCode) materialName:materialName];
        [self.clothMaterialArray addObject:material];
    }
    
    self.cloth.clothMaterials = self.clothMaterialArray;
    
    [self.delegate addBuyClothItem:self.cloth];
    
    //Close this screen
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)CancelToSeeClothDetail:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}


@end
