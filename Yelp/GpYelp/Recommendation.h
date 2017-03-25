//
//  Recommendation.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//
// the result of search

#import <Foundation/Foundation.h>

#import "Search.h"
#import "Review.h"
@class ShowRInfo;

@interface Recommendation : NSObject

//properties
@property (strong, nonatomic) NSString* Rname;
@property (strong, nonatomic) NSMutableArray<ShowRInfo*>* RInfo;
@property (strong, nonatomic) User* username;
@property (strong, nonatomic) NSMutableArray<Review*>* review;
@property int phoneNumber;


//constructors
-(id) initWithRname:(NSString*)Rname RInfo:(NSMutableArray<ShowRInfo*>*)RInfo review:(NSMutableArray<Review*>*)review phoneNumber:(int)phoneNumber;


//methods (APIs)
//-(void) show;



@end
