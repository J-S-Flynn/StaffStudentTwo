//
//  Student.h
//  AsiignmentTwop2
//
//  Created by J.S.Flynn on 11/05/2016.
//  Copyright © 2016 J.S.Flynn. All rights reserved.
//

#if __has_feature(objc_arc)
#define NSLog1(format, ...) CFShow((__bridge CFStringRef)[NSString stringWithFormat:format, ## __VA_ARGS__]);
#else
#define NSLog1(format, ...) CFShow([NSString stringWithFormat:format, ## __VA_ARGS__]);
#endif

#ifndef Student_h
#define Student_h

// impoert header files
#import <Foundation/Foundation.h>
#import "Person.h"

//declare Student class as subclass of Person
@interface Student : Person

// declare var of type NSString , @property creats geters and setters
// personName is inhereted from Person class
@property NSString * studentID ;

//constructor defined for use in the addStudent method
-(instancetype) initWithSudentNaem : (NSString *) stuName andStudentNumber : (NSString *) stuNumber ;

- (void) printDetails ;

@end


#endif /* Student_h */

