//
//  ViewController.m
//  StopwatchApp
//
//  Created by Student-001 on 15/11/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    a=0;
    b=0;
    c=0;
    
    
    
   
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
    
    _timer=[NSTimer scheduledTimerWithTimeInterval:1.0/100000 target:self selector:@selector(calculatetime) userInfo:nil repeats:YES];
    
    
}

-(void)calculatetime
{
    a++;
    
    NSString *str=[[NSString alloc]initWithFormat:@"%d",a];
    
    _seclbl.text=str;
    
    if(a==60)
    {
        b++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",b];
        _minlbl.text=str;
        a=0;
    }
    
    if(b==60)
    {
        c++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",c];
        _helbl.text=str;
        b=0;
 
    }
    
    
    
}






- (IBAction)stop:(id)sender {
    
    [_timer invalidate];
    
    
}
@end
