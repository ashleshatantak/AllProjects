//
//  ViewController.m
//  GPS_Demo
//
//  Created by Student-003 on 04/11/16.
//  Copyright © 2016 DK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _manager=[[CLLocationManager alloc]init];
    
    _manager.desiredAccuracy=kCLLocationAccuracyBest;
    
    _manager.delegate=self;
    
    [_manager startUpdatingLocation];
    
    _geocoder=[[CLGeocoder alloc]init];
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation *loc=[locations lastObject];
    
    MKPointAnnotation *point=[[MKPointAnnotation alloc]init];
    
    [_geocoder reverseGeocodeLocation:loc completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        
        CLPlacemark *place=[placemarks objectAtIndex:0];
       
        NSLog(@"%@    %@     %@    %@    %@",place.locality,place.subLocality,place.country,place.ocean,place.postalCode);
        
        point.title=place.locality;
        point.subtitle=place.subLocality;
        
    }];
    
    CLLocationCoordinate2D myloc;
    myloc.latitude=loc.coordinate.latitude;
    myloc.longitude=loc.coordinate.longitude;
    
    point.coordinate=myloc;
    
    [_map addAnnotation:point];
    
    //////////////////////////////////////////
    
//    NSString *str=@"Vengurla , Sindhudurg,maharashtra,India,416516";
//    [_geocoder geocodeAddressString:str completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
//       
//        CLPlacemark *place=[placemarks objectAtIndex:0];
//        
//        NSLog(@"%f     %f",place.location.coordinate.latitude,place.location.coordinate.longitude);
//     
//    }];
}


-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    
    pin.canShowCallout=YES;
    
    return pin;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
