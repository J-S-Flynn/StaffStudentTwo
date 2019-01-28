//
//  Staff.m
//  AsiignmentTwop2
//
//  Created by J.S.Flynn on 11/05/2016.
//  Copyright © 2016 J.S.Flynn. All rights reserved.
//

//import header files
#import <Foundation/Foundation.h>
#import "Staff.h"

//defines Staff method
@implementation Staff

//defines the constructor for Staff object,
-(instancetype) initWithStaffName : (NSString *)staffName andStaffTel : (NSString *)tel andOfficeNo : (NSInteger) offNo {
    
    self.personName = staffName ; // sets personName
    self.staffTel = tel ; //sets tellephone number
    self.officeNo = offNo ; // sets office number
    
    return self ;
}

// defines the printDetails Method
- (void) printDetails{
    
    //sets out the formatting for printing the staff details
    NSLog1(@" ** Staff ** ") ;
    NSLog1(@" Name : %@", self.personName) ;
    NSLog1(@" Telephone number : %@", self.staffTel) ;
    NSLog1(@" Office Number : %ld", self.officeNo) ;
}


@end