//
//  ViewController.h
//  StopwatchApp
//
//  Created by Student-001 on 15/11/16.
//  Copyright © 2016 Ashlesha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int a,b,c;
}

@property (weak, nonatomic) IBOutlet UILabel *helbl;
@property (weak, nonatomic) IBOutlet UILabel *minlbl;
@property (weak, nonatomic) IBOutlet UILabel *seclbl;
- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;

@property(nonatomic,retain)NSTimer *timer;




@end

