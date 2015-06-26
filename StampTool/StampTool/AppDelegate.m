//
//  AppDelegate.m
//  StampTool
//
//  Created by t-tazoe on 2015/06/08.
//  Copyright (c) 2015年 t-tazoe. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

/*========================================================
 ; AppDelegate
 ========================================================*/
@implementation AppDelegate

/*--------------------------------------------------------
 ; dealloc : 解放
 ;      in :
 ;     out :
 --------------------------------------------------------*/
-(void)dealloc
{
    self.window = nil;
}

/*--------------------------------------------------------
 ; didFinishLaunchingWithOptions : アプリ起動時に呼び出される
 ;                            in : UIApplication * application
 ;                               : NSDictionary *launchOptions
 ;                           out : BOOL YES
 --------------------------------------------------------*/
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *oViewController = [[ViewController alloc] init];
    UINavigationController *oNavigationController = [[UINavigationController alloc] initWithRootViewController:oViewController];
    oViewController = nil;
    [oNavigationController setNavigationBarHidden:YES];
    self.window.rootViewController = oNavigationController;
    oNavigationController = nil;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
