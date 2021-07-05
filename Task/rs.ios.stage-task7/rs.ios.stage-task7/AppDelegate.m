//
//  AppDelegate.m
//  rs.ios.stage-task7
//
//  Created by Albert Zhloba on 4.07.21.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    RootViewController *rootVC = [[RootViewController alloc] init];
    window.rootViewController = rootVC;
    self.window = window;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
