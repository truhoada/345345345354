//
//  AppDelegate.m
//  MyMusic
//
//  Created by VuongPC1 on 8/20/15.
//  Copyright (c) 2015 VuongPC1. All rights reserved.
//

#import "AppDelegate.h"
#import "View1.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    tabBarController.tabBar.opaque = YES;
    tabBarController.tabBar.translucent = NO;
    
//    UIViewController *view1 = [UIViewController  new];
//    UINavigationController *navi = [[UINavigationController  alloc] initWithRootViewController:view1];
//    navi.tabBarItem = [[UITabBarItem  alloc] init];
//    [navi.tabBarItem setTitle:@"View1"];
//    
//    [tabBarController setViewControllers:@[navi]];
//    [tabBarController setSelectedIndex:0];
    
    
    
    View1 *view = [[View1 alloc] initWithNibName:@"View1" bundle:nil];
    UINavigationController *navi = [[UINavigationController  alloc] initWithRootViewController:view];
        navi.tabBarItem = [[UITabBarItem  alloc] initWithTitle:@"listSong"
                                                         image:[UIImage imageNamed:@"guitar.png"]
                                                 selectedImage:[UIImage imageNamed:@"guitar.png"]];

    
    
    
    [tabBarController setViewControllers:@[navi]];
    [tabBarController setSelectedIndex:0];
    

    _window  = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [_window setBackgroundColor:[UIColor yellowColor]];
    [_window addSubview:tabBarController.view];
    self.window.rootViewController = tabBarController;
    [_window makeKeyAndVisible];
    
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
