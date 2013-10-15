//
//  AppDelegate.m
//  DIYTabbar
//
//  Created by apple on 13-10-8.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "NavigationController.h"
#import "HomePageViewController.h"
#import "CompanyProfileViewController.h"
#import "NewsCenterViewController.h"
#import "ProductDisplayViewController.h"
#import "MoreViewController.h"
@implementation AppDelegate
@synthesize tabBarController;
- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    tabBarController = [[ALTabBarController alloc] init];
    [self createViewController];
//    [self.window addSubview:tabBarController.view];
    self.window.rootViewController = tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)createViewController
{
    HomePageViewController *homepageVC = [[HomePageViewController alloc] init];
    NavigationController *homepageNC = [[NavigationController alloc] initWithRootViewController:homepageVC];
    
    CompanyProfileViewController *companyProfileVC = [[CompanyProfileViewController alloc] init];
    NavigationController *companyProfileNC = [[NavigationController alloc] initWithRootViewController:companyProfileVC];
    
    NewsCenterViewController *newsCenterVC = [[NewsCenterViewController alloc] init];
    NavigationController *newsCenterNC = [[NavigationController alloc] initWithRootViewController:newsCenterVC];
    
    ProductDisplayViewController *productDisplayVC = [[ProductDisplayViewController alloc] init];
    NavigationController *productDisplayNC = [[NavigationController alloc] initWithRootViewController:productDisplayVC];
    
    MoreViewController *moreVC = [[MoreViewController alloc] init];
    NavigationController *moreNC = [[NavigationController alloc] initWithRootViewController:moreVC];
    
    NSArray *viewControllerArray = @[homepageNC,companyProfileNC,newsCenterNC,productDisplayNC,moreNC];
    
    [tabBarController setViewControllers:viewControllerArray];
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
