//
//  app3tableViewController.m
//  App3Table
//
//  Created by Student-001 on 28/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import "app3tableViewController.h"
#import "AlertViewController.h"

@interface app3tableViewController ()

@end

@implementation app3tableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //_array=[[NSMutableArray alloc]init];
    
    
    //[self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
    
    // Do any additional setup after loading the view from its nib.
    
    
    
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


- (IBAction)btn1:(id)sender {
    
    AlertViewController *a=[[AlertViewController alloc]init];
    
    a.temp=_tf1.text;
    [self.navigationController pushViewController:a animated:YES];
}
@end
