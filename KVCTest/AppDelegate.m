//
//  AppDelegate.m
//  KVCTest
//
//  Created by sublio on 13/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "AppDelegate.h"
#import "DMStudent.h"
#import "DMGroup.h"

@interface AppDelegate ()


//@property (strong,nonatomic) DMStudent* student;
@property (strong, nonatomic) NSArray* groups;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
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
    
    */
    
    
    
    DMStudent* student1 = [[DMStudent alloc]init];
    
    student1.name = @"Denis";
    student1.age = 28;
    
    
    
    DMStudent* student2 = [[DMStudent alloc]init];
    
    student2.name = @"Alex";
    student2.age = 27;
    
    
    
    DMStudent* student3 = [[DMStudent alloc]init];
    
    student3.name = @"Max";
    student3.age = 31;
    
    
    DMStudent* student4 = [[DMStudent alloc]init];
    
    student4.name = @"Mick";
    student4.age = 24;
    
    
    DMGroup* group1 = [[DMGroup alloc]init];
    
    group1.students = @[student1,student2,student3,student4];
    
    
    /*
    [group1 addObserver:self forKeyPath:@"students" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld   context:NULL];
    
    NSLog(@"%@", group1.students);
    
    NSMutableArray* array = [group1 mutableArrayValueForKey:@"students"];
    
    
    [array removeLastObject];
    
    NSLog(@"%@", array);
    */
    
    
    /*
    self.student = student1;
    
    
    NSLog(@"%@",[self valueForKeyPath:@"student"]);
    
    
    //NSString* name = @"Denis111";
    NSNumber* name = @6;
    
    NSError* error = nil;
    
    
    if (![self.student validateValue:&name forKey:@"name" error:&error]){
        
        NSLog(@"%@", error);
        
    }
    
    */
    
    
    DMStudent* student5 = [[DMStudent alloc]init];
    
    student5.name = @"Nick";
    student5.age = 31;
    
    
    DMStudent* student6 = [[DMStudent alloc]init];
    
    student6.name = @"Nico";
    student6.age = 24;
    
    
    DMGroup* group2 = [[DMGroup alloc]init];
    
    group2.students = @[student5,student6];
    
    
    
    self.groups = @[group1, group2];
    
    NSLog(@"groups count = %@", [self valueForKeyPath:@"groups.@count"]);
    
    
    NSArray* allStudents = [self valueForKeyPath:@"groups.@distinctUnionOfArrays.students"];
    
    NSLog(@"all students = %@", allStudents);
    
    NSNumber* minAge = [allStudents valueForKeyPath:@"@min.age"];
    NSNumber* maxAge = [allStudents valueForKeyPath:@"@max.age"];
    NSNumber* sumAge = [allStudents valueForKeyPath:@"@sum.age"];
    NSNumber* avgAge = [allStudents valueForKeyPath:@"@avg.age"];
    
    
    NSLog(@"min age = %@", minAge);
    NSLog(@"max age = %@", maxAge);
    NSLog(@"sum Age = %@", sumAge);
    NSLog(@"avg Age = %@",  avgAge);
    
    NSArray* allNames = [allStudents valueForKeyPath:@"@distinctUnionOfObjects.name"];
    
    
    NSLog(@"%@", allNames);
    
    return YES;
    
}

-(void)dealloc{
    
    //[self.student removeObserver:self forKeyPath:@"name"];
}


#pragma  mark - Observing

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    
    NSLog(@"\n observeValueForKeyPath: %@\nofObject: %@\nchange:%@",keyPath, object,change);
    
    //id value = [change objectForKey:NSKeyValueChangeNewKey];
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
