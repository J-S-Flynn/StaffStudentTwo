//
//  Person.h
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

#ifndef Person_h
#define Person_h

//import header files
#import <Foundation/Foundation.h>

//declares the person class
@interface Person : NSObject

//creats var of type NSString , @property creats getters and setters
@property NSString * personName ;

- (void) printDetails ; // declares printDetails , will be overiden in subclass

@end

#endif /* Person_h */
