//
//  User.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-24.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "User.h"

@implementation User

-(id) initWithUsername:(NSString*)myUsername password:(NSString*)myPassword
{
    self = [super init];
    
    if(self)
    {
        self.username = myUsername;
        self.password = myPassword;
    }
    
    return self;
}

-(BOOL) isUserValid
{
    return true;
}


@end
