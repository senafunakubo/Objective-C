//
//  AppDelegate.h
//  Test
//
//  Created by Sena Funakubo on 2017-04-13.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FIRDatabaseReference *ref;

@end

