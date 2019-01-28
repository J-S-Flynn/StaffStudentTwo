//
//  Person.m
//  AsiignmentTwop2
//
//  Created by J.S.Flynn on 11/05/2016.
//  Copyright © 2016 J.S.Flynn. All rights reserved.
//

//import header files
#import <Foundation/Foundation.h>
#import "Person.h"

//defines the Person class declared in Person.h
@implementation Person

//defines the printDetails method declared in Person.h
- (void) printDetails {
    
    //prints the neame of a given person in the arrey to the console
    NSLog1(@" Name : %@ ", self.personName) ;
}
@end