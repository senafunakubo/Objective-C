//
//  ItemlistViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-09.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ItemlistViewController.h"

@interface ItemlistViewController ()

@end

@implementation ItemlistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated
{
    NSMutableArray * productNameArray = [[NSMutableArray alloc]init];
    productNameArray = [self.delegate seeItems];
    
    self.showAllItemList.text = [productNameArray componentsJoinedByString:@","];
}

- (IBAction)CancelToSeeTheList:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
