//
//  ThirdViewController.h
//  coredataapp
//
//  Created by Student-001 on 18/10/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *empid;
@property (weak, nonatomic) IBOutlet UITextField *empname;
@property (weak, nonatomic) IBOutlet UITextField *empadd;
@property (weak, nonatomic) IBOutlet UITextField *empphno;
- (IBAction)find:(id)sender;
- (IBAction)deletebtn:(id)sender;


- (IBAction)updatebtn:(id)sender;

@property(nonatomic,retain)NSArray *array;

@end
