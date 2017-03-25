//
//  FindFood.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-24.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "Recommendation.h"


@interface findFood: NSObject

//properties
@property (strong, nonatomic) NSMutableArray<Recommendation*>* recommendation;
@property (strong, nonatomic) NSData* googleMap;



//constructors

-(id) initWithRecommendation:(NSMutableArray<Recommendation*>*)recommendation googleMap:(NSData*)googleMap;

//method (APIs)

-(void) show;


@end
