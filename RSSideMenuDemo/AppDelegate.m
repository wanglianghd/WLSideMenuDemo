//
//  AppDelegate.m
//  SideDemo
//
//  Created by 王涼 on 16/4/11.
//  Copyright © 2016年 RS. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "NavigationController.h"
#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    ViewController *viewController = [ViewController new];
    viewController.title = @"主页";
    NavigationController *navigationController = [[NavigationController alloc] initWithRootViewController:viewController];
    navigationController.tabBarItem.title = @"主页";
    
    FirstViewController *firstViewController = [FirstViewController new];
    firstViewController.title = @"第一页";
    NavigationController *firstNavi = [[NavigationController alloc] initWithRootViewController:firstViewController];
    firstNavi.tabBarItem.title = @"第一页";
    
    
    SecondViewController *secondViewController = [SecondViewController new];
    secondViewController.title = @"第二页";
    NavigationController *secondNavi = [[NavigationController alloc] initWithRootViewController:secondViewController];
    secondNavi.tabBarItem.title = @"第二页";
    
    UITabBarController *tabbarController = [[UITabBarController alloc]init];
    tabbarController.delegate = self;
    tabbarController.viewControllers = @[navigationController,firstNavi,secondNavi];
    
    /** Now I select fixed presentationStyle
     
     你可以根据自己的需求设定样式，我是设定了一个固定的样式，类似腾讯qq iOS版
    */
    MainViewController *mainViewController = [[MainViewController alloc] initWithRootViewController:tabbarController
                                                                                  presentationStyle:LGSideMenuPresentationStyleSlideBelow
                                                                                               type:0];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = mainViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    self.currentIndex = tabBarController.selectedIndex;
    
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
