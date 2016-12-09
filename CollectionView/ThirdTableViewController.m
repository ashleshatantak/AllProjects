//
//  ThirdTableViewController.m
//  CollectionView
//
//  Created by Student-001 on 23/11/16.
//  Copyright © 2016 Student-001. All rights reserved.
//

#import "ThirdTableViewController.h"

@interface ThirdTableViewController ()

@end

@implementation ThirdTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    _array=[[NSMutableArray alloc]init];
    
    _manager=[[CLLocationManager alloc]init];
    
    _manager.desiredAccuracy=kCLLocationAccuracyBest;
    
    _manager.delegate=self;
    
    [_manager startUpdatingLocation];
    
    _geocoder=[[CLGeocoder alloc]init];
    _data=[[NSMutableData alloc]init];
    
    
    NSString *address=@"Kothrud , Pune, Maharashtra, India, 411038";
    [_geocoder geocodeAddressString:address completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        
        
        CLPlacemark *mylatlong=[placemarks objectAtIndex:0];
        CLLocation *location=mylatlong.location;
        NSLog(@"%f   %f",location.coordinate.latitude,location.coordinate.longitude);
        NSString  *CurrentLongitude=[NSString stringWithFormat: @"%f", location.coordinate.longitude];
        NSString   *CurrentLatitude=[NSString stringWithFormat: @"%f", location.coordinate.latitude];
        NSLog(@"%@",_templbl);
        
        
        NSString *url =[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=%@,%@&radius=500&type=%@&key=AIzaSyBTPh6eJQdLel0dW3DLDDf-8n450m0CaFk",CurrentLatitude,CurrentLongitude,_templbl];
        
       // NSLog(@"%@",url);
        NSURL *url1=[NSURL URLWithString:url];
        
        NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url1];
        
        [request setHTTPMethod:@"GET"];
        
        [NSURLConnection connectionWithRequest:request delegate:self];
        
        }];
    
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [_data setLength:0];
    
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_data appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSDictionary *outerdic=[NSJSONSerialization JSONObjectWithData:_data options:NSJSONReadingAllowFragments error:nil];
    
       NSArray  *resultarray=[outerdic objectForKey:@"results"];
    for(NSDictionary *temp in resultarray)
    {
        NSString *namestring=[temp objectForKey:@"name"];
        [_array addObject:namestring];
        
    }
    
    [self.tableView reloadData];
    
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text=[_array objectAtIndex:indexPath.row];

    
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
