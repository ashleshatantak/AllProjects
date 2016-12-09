//
//  ViewController.h
//  MapDemoAssignment
//
//  Created by Student-004 on 24/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property(nonatomic,retain)MKMapView *map;
@property(nonatomic,readonly)CLLocationCoordinate2D *loc1,*loc2,*loc3,*loc4,*loc5,*loc6,*loc7;
@property(nonatomic,retain)MKPointAnnotation *point1,*point2,*point3,*point4,*point5,*point6,*point7;

@end

