//
//  ShowRInfo.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SeeReview;
#import "WritingReview.h"

@interface ShowRInfo : NSObject

//properties
@property (strong, nonatomic) NSString* Rname;
@property (strong, nonatomic) Search* food;
@property (strong, nonatomic) Search* place;
@property (strong, nonatomic) NSMutableArray<WritingReview*>* WriteReviewing;
@property (strong, nonatomic) WritingReview* nOfR;
@property (strong, nonatomic) NSData* googleMap;
@property int phoneNumber;
@property (strong,nonatomic) NSDate* businessHour;


//constructors
-(id) initWithRname:(NSString*)Rname food:(Search*)food place:(Search*)place WriteReviewing:(NSMutableArray<WritingReview*>*)WriteReviewing nOfR:(WritingReview*)nOfR googleMap:(NSData*)googleMap phoneNumber:(int)phoneNumber businessHour:(NSDate*)businessHour;


//methods (APIs)
-(void)addWriteReviewing:(WritingReview*)addWritingReviewing;
-(void)show;

-(float) calculateStarReview:(NSMutableArray<WritingReview*>*)wReviews;

@end
