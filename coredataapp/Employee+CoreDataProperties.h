//
//  Employee+CoreDataProperties.h
//  coredataapp
//
//  Created by Student-001 on 18/10/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *empid;
@property (nullable, nonatomic, retain) NSString *empname;
@property (nullable, nonatomic, retain) NSString *empadd;
@property (nullable, nonatomic, retain) NSNumber *empphno;

@end

NS_ASSUME_NONNULL_END
