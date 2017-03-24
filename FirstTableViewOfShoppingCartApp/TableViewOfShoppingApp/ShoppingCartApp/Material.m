//
//  Material.m
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Material.h"

@implementation Material

-(id)initWithMaterialCode:(int)materialCode materialName:(NSString*)materialName
{
    self = [super init];
    if(self)
    {
        self.materialCode = materialCode;
        self.materialName = materialName;
    }
    return self;
}


@end
