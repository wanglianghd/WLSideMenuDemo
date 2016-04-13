//
//  AppDelegate.h
//  RSSideMenuDemo
//
//  Created by 王涼 on 16/4/12.
//  Copyright © 2016年 rs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kMainViewController (MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController
#define kTabbarController [(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController]


@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 this is the current index of the tabbarController , equel to tabbarController.selectedIndex
 
 tabbar当前选择的viewController的index
 */
@property (assign, nonatomic) NSUInteger currentIndex;

@end

