//
//  ViewController.m
//  MapDemoAssignment
//
//  Created by Student-004 on 24/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"
#import "point1ViewController.h"
#import "Point2ViewController.h"
#import "Point3ViewController.h"
#import "Point4ViewController.h"
#import "Point5ViewController.h"
#import "Point6ViewController.h"
#import "Point7ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    
    _map.mapType=MKMapTypeHybrid;
    
    
    [self.view addSubview:_map];
    _map.delegate=self;
    
   _point1=[[MKPointAnnotation alloc]init];
    
       _point1.title=@"Taj Mahal";
    _point1.subtitle=@"India";

    CLLocationCoordinate2D location1;
     location1.latitude=27.1750;
     location1.longitude=78.0422;
    
    
    _point1.coordinate=location1;
    [_map addAnnotation:_point1];
    
    _point2=[[MKPointAnnotation alloc]init];
    
    _point2.title=@"Great Wall Of China";
    _point2.subtitle=@"china";
    
    CLLocationCoordinate2D location2;
    location2.latitude=40.4319;
    location2.longitude=116.5704;
    
    
    _point2.coordinate=location2;
    [_map addAnnotation:_point2];

    
 _point3=[[MKPointAnnotation alloc]init];
    
    _point3.title=@"Colosseum";
    _point3.subtitle=@"Rome";
    
    CLLocationCoordinate2D location3;
    location3.latitude=41.8902;
    location3.longitude=12.4922;
    
    
    _point3.coordinate=location3;
    [_map addAnnotation:_point3];

    
    _point4=[[MKPointAnnotation alloc]init];
    
    _point4.title=@"Stonehenge";
    _point4.subtitle=@"France";
    
    CLLocationCoordinate2D location4;
    location4.latitude=51.1789;
    location4.longitude=1.8262;
    
    
    _point4.coordinate=location4;
    [_map addAnnotation:_point4];

    
   _point5=[[MKPointAnnotation alloc]init];
    
    _point5.title=@"Great Pyramid Of Giza";
    _point5.subtitle=@"Egypt";
    
    CLLocationCoordinate2D location5;
    location5.latitude=29.9792;
    location5.longitude=31.1342;
    
    
    _point5.coordinate=location5;
    [_map addAnnotation:_point5];

    
 _point6=[[MKPointAnnotation alloc]init];
    
    _point6.title=@"Christ the Redeemer";
    _point6.subtitle=@"Brazil";
    
    CLLocationCoordinate2D location6;
    location6.latitude=22.9519;
    location6.longitude=43.2105;
    
    
    _point6.coordinate=location6;
    [_map addAnnotation:_point6];

    
   _point7=[[MKPointAnnotation alloc]init];
    
    _point7.title=@"Petra";
    _point7.subtitle=@"Mexico";
    
    CLLocationCoordinate2D location7;
    location7.latitude=30.3285;
    location7.longitude=30.3285;
    
    
    _point7.coordinate=location7;
    [_map addAnnotation:_point7];
    
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    pin.pinTintColor=[UIColor blueColor];
    pin.canShowCallout=YES;
    
//    UIButton *btn=[UIButton buttonWithType:UIButtonTypeInfoLight];
//    [btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
  //  MKPointAnnotation *myanno=[[MKPointAnnotation alloc]init];
    
    
    
    
    if(annotation==_point1)
    {
        
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeInfoLight];
        [btn1 addTarget:self action:@selector(btnclick1) forControlEvents:UIControlEventTouchUpInside];
        
        
        
      UIImageView *img1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"taj1.jpg"]];
        pin.rightCalloutAccessoryView=btn1;
        pin.leftCalloutAccessoryView=img1;

    }
    else
        if(annotation==_point2)
        {
            
            UIButton *btn2=[UIButton buttonWithType:UIButtonTypeInfoLight];
            [btn2 addTarget:self action:@selector(btnclick2) forControlEvents:UIControlEventTouchUpInside];
            
            
            UIImageView *img2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Colosseum.jpg"]];
            pin.rightCalloutAccessoryView=btn2;
            pin.leftCalloutAccessoryView=img2;
            
        }
    
        else
            if(annotation==_point3)
            {
                UIButton *btn3=[UIButton buttonWithType:UIButtonTypeInfoLight];
                [btn3 addTarget:self action:@selector(btnclick3) forControlEvents:UIControlEventTouchUpInside];
                
                
                UIImageView *img3=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"stonehenge.jpg"]];
                pin.rightCalloutAccessoryView=btn3;
                pin.leftCalloutAccessoryView=img3;
                
            }

            else
                if(annotation==_point4)
                {
                    
                    UIButton *btn4=[UIButton buttonWithType:UIButtonTypeInfoLight];
                    [btn4 addTarget:self action:@selector(btnclick4) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    UIImageView *img4=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"pyramid.jpg"]];
                    pin.rightCalloutAccessoryView=btn4;
                    pin.leftCalloutAccessoryView=img4;
                    
                }

                else
                    if(annotation==_point5)
                    {
                        UIButton *btn5=[UIButton buttonWithType:UIButtonTypeInfoLight];
                        [btn5 addTarget:self action:@selector(btnclick5) forControlEvents:UIControlEventTouchUpInside];
                        
                        
                        UIImageView *img5=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Colosseum.jpg"]];
                        pin.rightCalloutAccessoryView=btn5;
                        pin.leftCalloutAccessoryView=img5;
                        
                    }

                    else
                        if(annotation==_point6)
                        {
                            
                            UIButton *btn6=[UIButton buttonWithType:UIButtonTypeInfoLight];
                            [btn6 addTarget:self action:@selector(btnclick6) forControlEvents:UIControlEventTouchUpInside];
                            
                            UIImageView *img6=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"christ.jpg"]];
                            pin.rightCalloutAccessoryView=btn6;
                            pin.leftCalloutAccessoryView=img6;
                            
                        }

                        else
                            if(annotation==_point7)
                            {
                                UIButton *btn7=[UIButton buttonWithType:UIButtonTypeInfoLight];
                                [btn7 addTarget:self action:@selector(btnclick7) forControlEvents:UIControlEventTouchUpInside];
                                
                                
                                UIImageView *img7=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"petra.jpg"]];
                                pin.rightCalloutAccessoryView=btn7;
                                pin.leftCalloutAccessoryView=img7;
                                
                            }

    
    
    return pin;
    
    
}

-(void)btnclick1
{
    point1ViewController *p1=[[point1ViewController alloc]init];
    
    [self.navigationController pushViewController:p1 animated:YES];
    
        NSLog(@"pin1 Button Click");
}
    
-(void)btnclick2
{
   
    Point2ViewController *p2=[[Point2ViewController alloc]init];
    [self.navigationController pushViewController:p2 animated:YES];
   

    NSLog(@"pin2 Button Click");
        
}

-(void)btnclick3
{
    
    Point3ViewController *p3=[[Point3ViewController alloc]init];
    [self.navigationController pushViewController:p3 animated:YES];
    NSLog(@"pin2 Button Click");

}

-(void)btnclick4
{
    
    Point4ViewController *p4=[[Point4ViewController alloc]init];
    [self.navigationController pushViewController:p4 animated:YES];
    NSLog(@"pin4 Button Click");
    
}


-(void)btnclick5
{
    
    Point5ViewController *p5=[[Point5ViewController alloc ]init];
    [self.navigationController pushViewController:p5 animated:YES];
    
    NSLog(@"pin5 Button Click");
    
}

-(void)btnclick6
{
    
    
    Point6ViewController *p6=[[Point6ViewController alloc]init];
    [self.navigationController pushViewController:p6 animated:YES];
   // NSLog(@"pin6 Button Click");
    
}
-(void)btnclick7
{
    Point7ViewController *p7=[[Point7ViewController alloc]init];
    [self.navigationController pushViewController:p7 animated:YES];
    
    
   // NSLog(@"pin7 Button Click");
    
}



    

    





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
