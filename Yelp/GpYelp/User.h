//
//  User.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-24.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

//properties

@property (strong, nonatomic) NSString* username;
@property (strong, nonatomic) NSString* password;

//constructors

-(id) initWithUsername:(NSString*)myUsername password:(NSString*)myPassword;

//methods (APIs)

-(BOOL) isUserValid;

@end
