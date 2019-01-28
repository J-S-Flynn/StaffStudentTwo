//
//  Staff.h
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

#ifndef Staff_h
#define Staff_h

//impoert header files
#import <Foundation/Foundation.h>
#import "Person.h"

//declare Staff class and subclass of Person
@interface Staff : Person

//declare vars of type NSString , @propert creats getters and setters
// inheariting the property from Person for personName
@property NSString * staffTel ;
@property NSInteger officeNo ;

//comstructor for use in addStaff
-(instancetype) initWithStaffName : (NSString *)staffName andStaffTel : (NSString *)tel andOfficeNo : (NSInteger) offNo ;

- (void) printDetails ; //declared printDetails

@end

#endif /* Staff_h */
