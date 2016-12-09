//
//  primeViewController.m
//  App1
//
//  Created by Student-001 on 23/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import "primeViewController.h"

@interface primeViewController ()

@end

@implementation primeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tf1=[[UITextField alloc]initWithFrame:CGRectMake(10, 50, 100, 30)];
    _tf1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_tf1];
    
    
    _btn=[[UIButton alloc]initWithFrame:CGRectMake(10, 100, 100, 30)];
    [_btn setTitle:@"Check Prime" forState:UIControlStateNormal];
    [_btn setTitle:@"Selected" forState:UIControlStateHighlighted];
    [_btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn];

    
    
    }


-(void)btnclick
{
    int no,i,p=0;
    no=[_tf1.text intValue];
    
    for(i=1;i<=100;i++)
    {
        if(no%i==0)
        {
            p++;
        }
    }
    if(p==2)
    {
        NSLog(@"no is prime");
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"prime no" message:@"Selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [alert show];

    }
        
        else
        {
            NSLog(@"no is not prime");
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@" not prime no" message:@"Selected" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
            [alert show];

        }

        
    
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

@end
