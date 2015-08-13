//
//  AppDelegate.m
//  MVCExample01
//
//  Created by Alejocram on 31/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import "AppDelegate.h"
#include "IDEBusinessDetailViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate{
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.businesses = [NSMutableArray array];
    
    IDEBusiness *business = [IDEBusiness businessWithName:@"Negocio 1" details:@"Negocio de ejemplo 1" rating:4 category:@"Restaurante" webPage:[NSURL URLWithString:@"http://www.ideaslab.com.co"] image:[UIImage imageNamed:@"ideaslab-logo850"]];
    [self.businesses addObject:business];
    IDEBusiness *business2 = [IDEBusiness businessWithName:@"Negocio 2" details:@"Negocio de ejemplo 2" rating:2 category:@"Restaurante" webPage:[NSURL URLWithString:@"http://www.ideaslab.com.co"] image:[UIImage imageNamed:@"ideaslab-logo850"]];
    [self.businesses addObject:business2];
    IDEBusiness *business3 = [IDEBusiness businessWithName:@"Negocio 3" details:@"Negocio de ejemplo 3" rating:5 category:@"Restaurante" webPage:[NSURL URLWithString:@"http://www.ideaslab.com.co"] image:[UIImage imageNamed:@"ideaslab-logo850"]];
    [self.businesses addObject:business3];
//    // Override point for customization after application launch.
//    IDEBusiness *restaurante = [[IDEBusiness alloc] initWithName:@"Restaurante iOS" details:@"Restaurante en la sede oficial de Apple, donde los empleados puede comer, almorzar, y tomar." rating:3 category:@"Restaurante" webPage:[NSURL URLWithString:@"http://www.ideaslab.com.co"] image:[UIImage imageNamed:@"ideaslab-logo850"]];
//    
//    IDEBusinessDetailViewController *VC = [[IDEBusinessDetailViewController alloc] initWithModel:restaurante];
//    
//    // Lo asignamos como controlador raíz
//    self.window.rootViewController = VC;
//    [self.window makeKeyAndVisible];
    
    
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
