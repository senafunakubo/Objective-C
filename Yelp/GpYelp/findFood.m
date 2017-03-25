//
//  FindFood.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-24.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "findFood.h"

@implementation findFood

-(id) initWithRecommendation:(NSMutableArray*)recommendation googleMap:(NSData*)googleMap
{
    self = [super init];
    
    if(self)
    {
        self.recommendation = recommendation;
        self.googleMap = googleMap;
        
    }
    
    return self;
}

//method (APIs)
-(void) show
{
    NSLog(@"This is the result after searching your choosing words.\n");
}

@end
