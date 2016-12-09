//
//  AlertViewController.h
//  App3Table
//
//  Created by Student-001 on 28/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lbl1;

@property(nonatomic,retain)NSString *temp;

//- (IBAction)btnclick:(id)sender;

@end
