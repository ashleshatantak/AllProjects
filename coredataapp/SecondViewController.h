//
//  SecondViewController.h
//  coredataapp
//
//  Created by Student-001 on 18/10/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *empid;
@property (weak, nonatomic) IBOutlet UITextField *empname;
@property (weak, nonatomic) IBOutlet UITextField *empadd;
@property (weak, nonatomic) IBOutlet UITextField *empphno;
- (IBAction)save:(id)sender;

@end
