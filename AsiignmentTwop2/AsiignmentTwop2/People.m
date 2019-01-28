//
//  People.m
//  AsiignmentTwop2
//
//  Created by J.S.Flynn on 11/05/2016.
//  Copyright © 2016 J.S.Flynn. All rights reserved.
//

//import header files
#import <Foundation/Foundation.h>
#import "People.h"
#import "Student.h"

//defines the People class
@implementation People

//sets up the array
-(instancetype) init{
    self = [super init] ;
    if (self)
        self.people = [NSMutableArray array] ;
    return self ;
}

// defines the addPerson method
- (void) addPerson : (Person *) person{
    [self.people addObject : person] ; //adds a new person object to the array
}

//defines the remove person method , idex is passed in from user input
- (void) removePerson : (int) index {
    [self.people removeObjectAtIndex:index] ; //fids the index and removes object from array
}


//defines the printAll meathod
- (void) printAll {
    
    
    int num = 1 ; // number displayed for index
    
    //for loop will iterate fr as many elements as are in the array
    for(Person * per in self.people){
        
        // the if statment test the object type to find if it is of type student
        // if it is, the sytem will print it out if not it will not 
        if( [per isKindOfClass:[Student class]]) {
            NSLog1(@"\n%d : ", num++) ; //prints the index then incraments it
            [per printDetails] ;  // calls the the printDetails method in Person
        }
    }
}

- (void) editPerson : (int) index : (Person *) person {
    
    
    [self.people replaceObjectAtIndex:index withObject: person ] ;
}

@end