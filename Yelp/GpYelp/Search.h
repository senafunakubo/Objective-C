//
//  Search.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//


#import <Foundation/Foundation.h>
@class findFood;

@interface Search : NSObject

//properties

@property (strong, nonatomic) NSString* food;
@property (strong, nonatomic) NSString* place;
@property (strong, nonatomic) NSMutableArray<findFood*>* findFood;

//constructors
-(id) initWithFood:(NSString*)food place:(NSString*)place;


//methods (APIs)
-(void) initSearchWithNewFood:(NSString*)newFood newPlace:(NSString*)newPlace findNewFood:(NSMutableArray<findFood*>*)findNewFood;

-(void) printSearch;

-(NSMutableArray<findFood*>*) Results:(Search*)findFood amount:(int)numberOfRecommendations;

@end
