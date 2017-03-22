//
//  Material.h
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Material : NSObject

@property int materialCode;
@property(strong,nonatomic) NSString* materialName;

-(id)initWithMaterialCode:(int)materialCode materialName:(NSString*)materialName;


@end
