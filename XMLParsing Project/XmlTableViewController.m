//
//  XmlTableViewController.m
//  XMLParsing Project
//
//  Created by Student-001 on 28/11/16.
//  Copyright © 2016 Student-001. All rights reserved.
//

#import "XmlTableViewController.h"
#import "Plant.h"
#import "CellTableViewCell.h"

@interface XmlTableViewController ()

@end

@implementation XmlTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _plantarray=[[NSMutableArray alloc]init];
    NSString *str=@"http://www.w3schools.com/xml/plant_catalog.xml";
    NSURL *url=[NSURL URLWithString:str];
    
    _saxparser=[[NSXMLParser alloc]initWithContentsOfURL:url];
    _saxparser.delegate=self;
    [_saxparser parse];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CellTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
    
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    
    if([elementName isEqualToString:@"PLANT"])
    {
        _pl=[[Plant alloc]init];
    }
    if([elementName isEqualToString:@"COMMON"])
    {
        _str1=[[NSMutableString alloc]init];
    }
    if([elementName isEqualToString:@"BOTANICAL"])
    {
        _str1=[[NSMutableString alloc]init];
    }
    if([elementName isEqualToString:@"ZONE"])
    {
        _str1=[[NSMutableString alloc]init];
    }
    if([elementName isEqualToString:@"LIGHT"])
    {
        _str1=[[NSMutableString alloc]init];
    }
    if([elementName isEqualToString:@"PRICE"])
    {
        _str1=[[NSMutableString alloc]init];
    }
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [_str1 appendString:string];
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    
    if([elementName isEqualToString:@"COMMON"])
    {
        _pl.pcommon=_str1;
        NSLog(@"plant %@",_str1);
    }
    if([elementName isEqualToString:@"BOTANICAL"])
    {
        _pl.pbotanical=_str1;
        NSLog(@"%@",_str1);
    }
    
    if([elementName isEqualToString:@"ZONE"])
    {
        _pl.pzone=_str1;
        NSLog(@"%@",_str1);
    }
    
    if([elementName isEqualToString:@"LIGHT"])
    {
        _pl.plight=_str1;
        NSLog(@"%@",_str1);
    }
    
    if([elementName isEqualToString:@"PRICE"])
    {
        _pl.pprice=_str1;
        NSLog(@"%@",_str1);
        
    }
    if([elementName isEqualToString:@"PLANT"])
    {
        [_plantarray addObject:_pl];
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
    return _plantarray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    Plant *temp=[_plantarray objectAtIndex:indexPath.row];
    
    cell.lbl1.text=temp.pcommon;
    cell.lbl2.text=temp.pbotanical;
    cell.lbl3.text=temp.pzone;
    cell.lbl4.text=temp.plight;
    
    return cell;
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 180;
    
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
