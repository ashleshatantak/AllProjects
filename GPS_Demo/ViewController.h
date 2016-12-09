//
//  ViewController.h
//  GPS_Demo
//
//  Created by Student-003 on 04/11/16.
//  Copyright © 2016 DK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *map;

@property(nonatomic,retain)CLLocationManager *manager;

@property(nonatomic,retain)CLGeocoder *geocoder;

@end

