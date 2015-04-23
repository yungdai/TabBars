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
    
    
    // create an instance of the FavouritesViewController
    FavouritesViewController *favouritesViewController = [[FavouritesViewController alloc]init];
    
    // create an instance of the naviation controller for the feedViewController
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:feedViewController];
    // create an instance of the naviation controller for the favouritesViewController
    UINavigationController *favouritesNavController = [[UINavigationController alloc]initWithRootViewController:favouritesViewController];
    
    // create a tab bar to the rootViewController
    // instantiate the tab bar object
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    // create a new window
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.rootViewController = tabBarController;
    
    // create and set the tab bar items passed it into an arry and of setViewControllers
    // passed in the navController because you want it navigate when you press the button.
    [tabBarController setViewControllers:@[navController, favouritesNavController]];
    // allow keypresses for the window
    [self.window makeKeyAndVisible];

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
