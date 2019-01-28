//
//  main.m
//  AsiignmentTwop2
//
//  Created by J.S.Flynn on 11/05/2016.
//  Copyright © 2016 J.S.Flynn. All rights reserved.
//

/**
 * The code below this piont is not mine, it is simply there to remove the timestamp from NSLog for easyer readin
 * I have used this snipet several times in the classes.
 **/

#if __has_feature(objc_arc)
#define NSLog1(format, ...) CFShow((__bridge CFStringRef)[NSString stringWithFormat:format, ## __VA_ARGS__]);
#else
#define NSLog1(format, ...) CFShow([NSString stringWithFormat:format, ## __VA_ARGS__]);
#endif

/**
 * end sample code
 **/


//import header files
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Staff.h"
#import "Student.h"
#import "People.h"

Person * person  ; // declare new person class
People * people ; // declare new people class

//creat meathods for use in Main
@interface Methods : NSObject
+(void) addStaff ; // declare addStaff method
+(void) addStudent ; //declare addStudent Method
+(void) removePerson ; //declare removePerson Method
+(void) editPerson ;
@end

// defines methods
@implementation Methods


//define addStaff Method
+(void) addStaff{
    
    /**
     * the method takes in input from the user for the staff name, tel and office number
     * it then sends the info to People to be added to the array
     **/
    
    // declare local vars for use in addStaff
    char staffName[20] ;
    char telNo[12] ;
    int offNo ;
    
    NSString * sName ;
    NSString * sTel ;
    
    //output and input for the name tel and office number
    NSLog1(@"please nenter the name : ") ;
    scanf("%s",staffName) ;
    
    NSLog1(@"please enter the telephone number : ") ;
    scanf("%s", telNo) ;
    
    NSLog1(@"please enter the ofice number : ") ;
    scanf("%d", &offNo) ;
    
    // makes NSString sName and sTel equal to the user input for name and tel
    sName = [NSString stringWithCString:staffName encoding:NSASCIIStringEncoding];
    sTel = [NSString stringWithCString:telNo encoding:NSASCIIStringEncoding];
    
    // initalises a new person and adds to in the name and tel , casting the office number to NSInteger
    person = [[Staff alloc] initWithStaffName : sName andStaffTel : sTel andOfficeNo : (NSInteger) offNo];
    
    // calls the addPerson method and send the person object to add to the array
    [people addPerson : person] ;
}

//define the addStudent method
+(void) addStudent{
    
    // declare local vars for use in addStudent
    NSString * stName ;
    NSString * stNum ;
    
    char stuName[20] ;
    char stuNumber[10] ;
    
    //output and input for name and student number
    NSLog1(@"Please enter students name : ") ;
    scanf("%s", stuName) ;
    
    NSLog1(@"please enter student ID number : ") ;
    scanf("%s", stuNumber) ;
    
    // makes NSString stName and stNum equal to stuName and stuNumber respectivly
    stName = [NSString stringWithCString:stuName encoding:NSASCIIStringEncoding];
    stNum = [NSString stringWithCString:stuNumber encoding:NSASCIIStringEncoding];
    
    //creats a new object person, allocats memory and adds the name and studnet id
    person = [[Student alloc] initWithSudentNaem : stName andStudentNumber : stNum] ;
    
    //class addPerson and passes the person object to it to add o array
    [people addPerson : person] ;
}

// defines the removePerson method
+(void)removePerson{
    
    //declare local var for use in removePerson
    int index ;
    
    //calls the printAll method to print a list of eveyone in the system
    [people printAll] ;
    
    //out put and input for the user
    NSLog1(@"please enter the index person you wish to remove ") ;
    scanf("%d", &index) ;
    
    //calls the removePerson methode in People class and passes the index for the selected member to it
    [people removePerson:index -1 ] ;
}

// defines the editPerson Method
+(void) editPerson{
    
    int index ; // creats variable for storing index
    
    [people printAll] ; //prints list of all people
    
    // advises the user for input
    NSLog1(@"please enter the index of the person you wish to edit") ;
    scanf("%d", &index) ;// scans in index
    
    
    
}

@end

// the main thread
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //instantiats the array people
        people = [People new] ;
        
        int opChoose ;//used for selection of options
        
        //loop will continue until it reachis its exit condition
        do{
            
            //advised user on actions
            NSLog1(@"\n\nPlese choose and optiong\n1. Add Staff \n2. Add Student\n3. List All\n4. Remove person\n5. edit Person\n6. Quit \n\n");
            scanf("%d", &opChoose) ;
            
            // checkes the user input for desired option
            switch (opChoose) {
                case 1:
                    [Methods addStaff] ; //calls method addStaff
                    break ;
                case 2:
                    [Methods addStudent] ; //calls method addStudent
                    break ;
                case 3:
                    [people printAll] ; //calls method printAll from the People class
                    break ;
                case 4:
                    [Methods removePerson] ; // calls the removePerson method
                    break ;
                case 5:
                    [Methods editPerson] ; // calls to the editPerson method
                    break ;
                case 6:
                    break ; // ends the programe if the input is 6
            }
            
            
            
        }while(opChoose != 6) ; // ceacks the value of opChoose
    }
    
    return 0; // return 0 if the programme runs correctly
}