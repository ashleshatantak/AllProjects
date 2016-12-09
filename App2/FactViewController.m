//
//  FactViewController.m
//  App2
//
//  Created by Student-001 on 23/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import "FactViewController.h"

@interface FactViewController ()

@end

@implementation FactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    _tf1=[[UITextField alloc]initWithFrame:CGRectMake(10, 20, 40, 30)];
    _tf1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_tf1];
    
    _tf2=[[UITextField alloc]initWithFrame:CGRectMake(100, 20, 40, 30)];
    _tf2.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_tf2];
    
    _btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame=CGRectMake(200, 20, 40, 30);
        [_btn setTitle:@"Calculate" forState:UIControlStateNormal];
    [_btn setTitle:@"Selected" forState:UIControlStateHighlighted];
    [_btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn];
    
    _array=[[NSMutableArray alloc]init];
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    _table=[[UITableView alloc]initWithFrame:CGRectMake(10, 100, 200, 100) style:UITableViewStyleGrouped];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    
    
    
    // Do any additional setup after loading the view.
}



-(void)btnclick
{
//    int no1,no2,i;
    
   int no1=[_tf1.text intValue];
    int no2=[_tf2.text intValue];
    
    for(int i=1;i<=no2;i++)
    {
        NSString *s1=[NSString stringWithFormat:@"%d * %d=%d",no1,i,no1*i];
        [_array addObject:s1];
    }
    
    [self.table reloadData];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text=[_array objectAtIndex:indexPath.row];
    
    return cell;
//   if(indexPath.section==0)
//    {
//        cell.textLabel.text=[_btn objectAtIndex:indexPath.row];
//        cell.imageView.image=[UIImage imageNamed:@"4"];
//        cell.accessoryType=UITableViewCellAccessoryCheckmark;
//    }
//    else
//    {
//        cell.textLabel.text=[_color objectAtIndex:indexPath.row];
//        cell.imageView.image=[UIImage imageNamed:@"3"];
//        UISwitch *s=[[UISwitch alloc]init];
//        cell.accessoryView=s;
//}
}
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 150;
//    
//}
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    return 160;
//}


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
