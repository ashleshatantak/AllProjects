//
//  whetherTableViewController.m
//  WhetherApplication
//
//  Created by Student-004 on 14/12/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import "whetherTableViewController.h"
#import "Whether.h"
#import "CustomeTableViewCell.h"

@interface whetherTableViewController ()

@end

@implementation whetherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _array=[[NSMutableArray alloc]init];
    
    NSString *str=@"https://api.forecast.io/forecast/2a7039e0cc713983c055cb9c8882d249/18.510567,73.817648";
    
    NSURL *url=[NSURL URLWithString:str];
    
    NSMutableURLRequest *req=[NSMutableURLRequest requestWithURL:url];
    
    
    NSURLSession *session=[NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    
    NSURLSessionTask *task=[session dataTaskWithRequest:req completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
        {
            NSDictionary *outerdic= [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
            NSDictionary *hourdic=[outerdic objectForKey:@"hourly"];
            
            NSArray *dataarray=[hourdic objectForKey:@"data"];
            
            for(NSDictionary *temp in dataarray)
                {
                   NSString *str1=[temp objectForKey:@"summary"];
                   NSString *str2=[[temp objectForKey:@"temperature"]description];
                   NSString *str3=[[temp objectForKey:@"humidity"]description];
                    
                    NSString *str4=[[temp objectForKey:@"windSpeed"]description];
//                   NSString *str5=[[temp objectForKey:@"time"]description];
                    
                   Whether *w1=[[Whether alloc]init];
                                    
                    w1.summary=str1;
                    w1.temp=str2;
                    w1.humidity=str3;
                    w1.wind=str4;
//                    w1.time=str5;
                    
                                    
                   [_array addObject:w1];
                                    
               }
                                
                [self.tableView reloadData];
        }];
    
    
    [task resume];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomeTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    Whether *temp=[_array objectAtIndex:indexPath.row];
    
    cell.lbl1.text=temp.summary;
    cell.lbl2.text=temp.temp;
    cell.lbl3.text=temp.humidity;
    cell.lbl4.text=temp.wind;
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
