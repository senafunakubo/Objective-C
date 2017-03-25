//
//  Profiles.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-26.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Review;

@interface Profiles :NSObject

//properties
@property (strong, nonatomic) NSString* username;
@property (strong, nonatomic) NSString* address;
@property int numberOfFriends;
@property(strong,nonatomic)Review* reviews;
@property(strong,nonatomic)NSString* profilePhoto;
@property int numberOfReviews;


//constructors
-(id) initWithusername:(NSString*)username address:(NSString*)address numberOfFriends:(int)numberOfFriends profilePhoto:(NSString*)profilePhoto numberOfReviews:(int)numberOfReviews;


//methods (APIs)
-(void) printProfile;


@end

