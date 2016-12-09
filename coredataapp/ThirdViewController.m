//
//  ThirdViewController.m
//  coredataapp
//
//  Created by Student-001 on 18/10/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"
#import "Employee.h"
#import "FirstTableViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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

- (IBAction)find:(id)sender {
    
    UIApplication *myapp=[UIApplication sharedApplication];
    
    AppDelegate *myappdel=(AppDelegate *)myapp.delegate;
    
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    NSFetchRequest *request=[NSFetchRequest fetchRequestWithEntityName:@"Employee"];
    NSArray *result=[context executeFetchRequest:request error:nil];
    
    
//    Employee *e1=[NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
//    
//         [context deleteObject:e1];
    
    
    for(Employee *e in result)
    {
        long t=[e.empid integerValue];
        int i=(int)t;
        int p=[_empid.text intValue];
        if(i==p)
        {
            _empname.text=e.empname;
            _empadd.text=e.empadd;
            _empphno.text=[NSString stringWithFormat:@"%@",e.empphno];
        }
        
        
    }

}

- (IBAction)deletebtn:(id)sender {
    
    UIApplication *myapp=[UIApplication sharedApplication];
    
    AppDelegate *myappdel=(AppDelegate *)myapp.delegate;
    
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    
    NSFetchRequest *request=[NSFetchRequest fetchRequestWithEntityName:@"Employee"];
    NSArray *result=[context executeFetchRequest:request error:nil];
    
    
    for(Employee *e in result)
    {
        long t=[e.empid integerValue];
        int i=(int)t;
        int p=[_empid.text intValue];
        if(i==p)
        {
            _empname.text=e.empname;
            _empadd.text=e.empadd;
            _empphno.text=[NSString stringWithFormat:@"%@",e.empphno];
        }
        
        
    }

        [self.navigationController popToRootViewControllerAnimated:YES];
    
    
    
    
}


- (IBAction)updatebtn:(id)sender {
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Employee"];
    NSPredicate * predicte = [NSPredicate predicateWithFormat:@"pid == %@",_empid.text];
    [request setPredicate:predicte];
    NSArray * result = [context executeFetchRequest:request error:nil];
    if (result.count == 0)
    {
        NSLog(@"No user in table");
    }
    else
    {
        Employee *e = [result firstObject];
        e.empname=_empname.text;
        e.empadd=_empadd.text;
        // d.pmobile = [NSNumber numberWithInt:_mobtext.text];
        [context save:nil];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    

    
    
    
}
@end
