//
//  ThirdTableViewController.h
//  CollectionView
//
//  Created by Student-001 on 23/11/16.
//  Copyright © 2016 Student-001. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ThirdTableViewController : UITableViewController<CLLocationManagerDelegate,MKMapViewDelegate>


@property(nonatomic,retain)NSMutableArray *array;
@property(nonatomic,retain)NSString *templbl;
@property(nonatomic,retain)NSMutableData *data;




@property(nonatomic,retain)CLLocationManager *manager;
@property(nonatomic,retain)MKMapView *map;
@property(nonatomic,retain)CLGeocoder *geocoder;


@end
