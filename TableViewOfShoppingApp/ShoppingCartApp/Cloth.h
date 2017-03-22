//
//  Cloth.h
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Products.h"
#import "Material.h"

@interface Cloth : Products

@property (strong,nonatomic)NSMutableArray<Material*>* clothMaterials;

-(id)initWithProductId:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry clothMaterials:(NSMutableArray<Material*>*)clothMaterials;


@end
