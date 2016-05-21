//
//  AppDelegate.m
//  KVCTest
//
//  Created by sublio on 13/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "AppDelegate.h"
#import "DMStudent.h"

@interface AppDelegate ()


@property (strong,nonatomic) DMStudent* student;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    DMStudent* student = [[DMStudent alloc]init];
    
    
    [student addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld   context:NULL];
    
    
    student.name = @"Denis";
    student.age = 28;
    
    NSLog(@"%@",student);
    
    
    [student setValue:@"Alex" forKey:@"name"];
    [student setValue:@25 forKey:@"age"];
    
    NSLog(@"name1 = %@, name2 = %@", student.name, [student valueForKey:@"name"]);
    
    
    NSLog(@"%@",student);
    
    
    
    [student changeName];
    
    
    NSLog(@"%@",student);
    
    self.student = student;
    
    
    
    return YES;
}

-(void)dealloc{
    
    [self.student removeObserver:self forKeyPath:@"name"];
}


#pragma  mark - Observing

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    
    NSLog(@"\n observeValueForKeyPath: %@\nofObject: %@\nchange:%@",keyPath, object,change);
    
    id value = [change objectForKey:NSKeyValueChangeNewKey];
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
