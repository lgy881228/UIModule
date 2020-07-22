//
//  AppDelegate.m
//  UIModule
//
//  Created by edz on 2020/7/21.
//  Copyright © 2020 edz. All rights reserved.
//

#import "AppDelegate.h"
#import "EntryViewController.h"
#import "XEngineSDK.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    EntryViewController *homePageVC = [[EntryViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:homePageVC];
       
       
       self.window.rootViewController = nav;
     [[XEngineSDK sharedInstance] registerApp:AppID andAppSecret:AppSecret serverUrl:@""];
    return YES;
}





@end
