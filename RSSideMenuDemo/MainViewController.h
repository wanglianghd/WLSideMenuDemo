//
//  MainViewController.h
//  LGSideMenuControllerDemo
//
//  Created by Grigory Lutkov on 25.04.15.
//  Copyright (c) 2015 Grigory Lutkov. All rights reserved.
//

#import "LGSideMenuController.h"

@interface MainViewController : LGSideMenuController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
                         presentationStyle:(LGSideMenuPresentationStyle)style
                                      type:(NSUInteger)type;

@end
