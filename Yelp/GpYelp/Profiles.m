//
//  Profiles.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-26.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Profiles.h"
#import "Review.h"

@implementation Profiles

-(id) initWithusername:(NSString*)username address:(NSString*)address numberOfFriends:(int)numberOfFriends profilePhoto:(NSString*)profilePhoto numberOfReviews:(int)numberOfReviews
{
    self = [super init];
    
    if(self)
    {
        self.username = username;
        self.address = address;
        self.numberOfFriends = numberOfFriends;
        self.profilePhoto = profilePhoto;
        self.numberOfReviews = numberOfReviews;
    }
    
    return self;
}


//methods (APIs)

-(void) printProfile
{
    NSLog(@"\n==============================\n");
    
    NSLog(@"Username is %@\n", self.username);
    NSLog(@"My address is %@\n", self.address);
    NSLog(@"My profile picture is %@\n", self.profilePhoto);
    NSLog(@"I have %d friends!\n", self.numberOfFriends);
    NSLog(@"I've already posted %d reviews.\n", self.numberOfReviews);
    
    NSLog(@"\n==============================\n");

}


@end
