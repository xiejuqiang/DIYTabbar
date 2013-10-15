//
//  AppDelegate.h
//  DIYTabbar
//
//  Created by apple on 13-10-8.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALTabBarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) ALTabBarController *tabBarController;
@end
