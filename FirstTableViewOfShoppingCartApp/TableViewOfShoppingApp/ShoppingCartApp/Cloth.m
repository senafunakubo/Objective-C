//
//  Cloth.m
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Cloth.h"

@implementation Cloth

-(id)initWithProductId:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry clothMaterials:(NSMutableArray<Material*>*)clothMaterials
{
    self = [super initWithProductId:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    
    if(self)
    {
        self.clothMaterials = clothMaterials;
    }
    return self;
}


@end
