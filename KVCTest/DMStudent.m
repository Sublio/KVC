//
//  DMStudent.m
//  KVCTest
//
//  Created by sublio on 21/05/16.
//  Copyright (c) 2016 sublio. All rights reserved.
//

#import "DMStudent.h"

@implementation DMStudent



-(void) setName:(NSString *)name{
    
    _name = name;
    
    NSLog (@" student setName: %@", name);
    
}

-(void)setAge:(NSInteger *)age{
    
    
    _age = age;
    
    NSLog(@" student setAge: %d", age);
}


- (NSString*) description {
    
    return [NSString stringWithFormat:@"Student %@, %d", self.name, self.age];
    
}

@end
