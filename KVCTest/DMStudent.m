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

-(void)setAge:(NSInteger)age{
    
    
    _age = age;
    
    NSLog(@" student setAge: %d", age);
}


- (NSString*) description {
    
    return [NSString stringWithFormat:@"Student: %@, %d", self.name, self.age];
    
}


- (void) setValue:(id)value forKey:(NSString *)key{
    
    NSLog(@"Student setValue:%@ forKey %@", value, key);
    [super setValue:value forKey:key];
    
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
    
    NSLog(@"setValue for UndefinedKey");
}

-(id)valueForUndefinedKey:(NSString *)key{
    
    NSLog(@"value for endefined key");
    return nil;
    
}
/*- (void)willChangeValueForKey:(NSString *)key;
- (void)didChangeValueForKey:(NSString *)k
*/


-(void)changeName{
    
    
    [self willChangeValueForKey:@"name"];
    _name = @"FakeName";
    [self didChangeValueForKey:@"name"];
    
}

/*
- (BOOL)validateValue:(inout id *)ioValue forKey:(NSString *)inKey error:(out NSError **)outError{
    
    
    if ([inKey isEqualToString:@"name"]){
        
        NSString* newName = *ioValue;
        
        if (![newName isKindOfClass:[NSString class]]){
            
            
            *outError = [[NSError alloc] initWithDomain:@"Not NSString" code:123 userInfo:nil];
            return NO;
            
            
            
        }
        
        
        if ([newName rangeOfString:@"1"].location != NSNotFound){
            
            *outError = [[NSError alloc] initWithDomain:@"Has numbers" code:324 userInfo:nil];
            return NO;
        }
        
    }
    
    return YES;
}*/

-(BOOL) validateName:(inout id *)ioValue error:(out NSError **)outError{
    
    
    NSLog(@"AAAAA");
    
    return YES;
    
}


@end
