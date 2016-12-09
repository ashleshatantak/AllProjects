//
//  FirstCollectionViewController.m
//  CollectionView
//
//  Created by Student-001 on 18/11/16.
//  Copyright © 2016 Student-001. All rights reserved.
//

#import "FirstCollectionViewController.h"
#import "SecondCollectionViewCell.h"
#import "ThirdTableViewController.h"

@interface FirstCollectionViewController ()

@end

@implementation FirstCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imgarray=[[NSMutableArray alloc]initWithObjects:@"Hostel.png",
                                                     @"Railway.png",
                                             @"atm.png",
                                             @"busstop.png",
                                             @"Coffee.png",
                                             @"College.png",
                                             @"hospital.png",
                                             @"hotel.png", nil];
    
    
    self.lblarray=[[NSMutableArray alloc]initWithObjects:@"Hostels",@"Railway",
                                                     @"ATM",
                                                     @"Busstop",
                                                     @"Restaurant",
                                                     @"College",
                                                     @"Hospital",
                                                     @"Hotel", nil];
    
    
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SecondCollectionViewCell *Cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    Cell.imgview.image=[UIImage imageNamed:[self.imgarray objectAtIndex:indexPath.row ]];
    Cell.lbl.text=[_lblarray objectAtIndex:indexPath.row];
    Cell.layer.borderColor= [UIColor whiteColor].CGColor;
    Cell.layer.borderWidth = 2;
    return Cell;
    
}
#pragma mark <UICollectionViewDelegate>

- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
{
    
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    ThirdTableViewController *tvc=[[ThirdTableViewController alloc]init];
    tvc.templbl=[_lblarray objectAtIndex:indexPath.row];
    
    
    
    if(indexPath.item==0)
    {
        NSLog(@"Hostel");
        tvc.templbl=@"hostel";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==1)
    {
        NSLog(@"Railway");
        tvc.templbl=@"Railway";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==2)
    {
        NSLog(@"ATM");
        tvc.templbl=@"ATM";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    else if(indexPath.item==3)
    {
        NSLog(@"busstop");
        tvc.templbl=@"busstop";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==4)
    {
        NSLog(@"Coffee");
        tvc.templbl=@"restaurant";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==5)
    {
        NSLog(@"College");
        tvc.templbl=@"colleges";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==6)
    {
        NSLog(@"Hospital");
        tvc.templbl=@"hospital";
        [self.navigationController pushViewController:tvc animated:YES];
    }
    
    else if(indexPath.item==7)
    {
        NSLog(@"Hotel");
        tvc.templbl=@"hotel";
        [self.navigationController pushViewController:tvc animated:YES];
    }



    
    
}


@end
