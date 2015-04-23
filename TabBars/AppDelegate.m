//
//  AppDelegate.m
//  TabBars
//
//  Created by Yung Dai on 2015-04-23.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "AppDelegate.h"
#import "FeedViewController.h"
#import "FavouritesViewController.h"

@interface AppDelegate ()

@end

// the AppDelegate tells how the window to present itself

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch
    // create an instance of the FeedViewController
    FeedViewController *feedViewController = [[FeedViewController alloc]init];
    feedViewController.title = @"Feed";
    feedViewController.tabBarItem.image = [UIImage imageNamed:@"egg"];
    
    
    // create an instance of the FavouritesViewController
    FavouritesViewController *favouritesViewController = [[FavouritesViewController alloc]init];
    favouritesViewController.title = @"Favourites";
    favouritesViewController.tabBarItem.image = [UIImage imageNamed:@"egg"];
    // create a tab bar to the rootViewController
    // instantiate the tab bar object
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    // create a new window
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.rootViewController = tabBarController;
    
    // allow keypresses for the window
    [self.window makeKeyAndVisible];

    
    // create and set the tab bar items passed it into an arry and of setViewControllers
    [tabBarController setViewControllers:@[feedViewController, favouritesViewController]];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
