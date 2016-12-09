//
//  SecondViewController.m
//  coredataapp
//
//  Created by Student-001 on 18/10/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"
#import "Employee.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    
    UIApplication *myapp=[UIApplication sharedApplication];
    
    AppDelegate *myappdel=(AppDelegate *)myapp.delegate;
    
    NSManagedObjectContext *context=myappdel.managedObjectContext;

    
    Employee *e1=[NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
    
    e1.empid=[NSNumber numberWithInteger:(int)_empid.text];
    e1.empname=_empname.text;
    e1.empadd=_empadd.text;
    e1.empphno=[NSNumber numberWithInteger:(int)_empphno.text];
    
    [context save:nil];

   [self.navigationController popViewControllerAnimated:YES];
    
}

    
    

@end
