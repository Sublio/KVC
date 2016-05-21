//
//  DMStudent.h
//  KVCTest
//
//  Created by sublio on 21/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMStudent : NSObject

@property (strong, nonatomic)NSString* name;
@property (assign, nonatomic)NSInteger age;


-(void)changeName;

@end
