//
//  AppDelegate.m
//  profileSlide
//
//  Created by S on 15/10/12.
//  Copyright © 2015年 S. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "StartView.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    ViewController * vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    // 添加启动动画
    [self startAnimation];
    
    return YES;
}

#pragma mark - 启动动画
- (void)startAnimation {
    
    __block StartView * view = [[StartView alloc]init];
    view.time = 4;
    view.frame = self.window.frame;
    view.backgroundColor = [UIColor grayColor];
    view.image = [UIImage imageNamed:@"blackBG"];
    [view loadAnimation];
    [self.window addSubview:view];
    
    dispatch_time_t delayInNanoSeconds =dispatch_time(DISPATCH_TIME_NOW, view.time* NSEC_PER_SEC);
    // 延迟执行
    dispatch_after(delayInNanoSeconds, dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:1 animations:^{
            view.alpha = 0;
        } completion:^(BOOL finished) {
            [view removeFromSuperview];
        }];
    });

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
