//
//  FactViewController.h
//  App2
//
//  Created by Student-001 on 23/09/16.
//  Copyright © 2016 Student-003. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FactViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,retain)UITextField *tf1,*tf2;
@property(nonatomic,retain)UIButton *btn;
@property(nonatomic,retain)UITableView *table;
@property(nonatomic,retain)NSMutableArray *array;

@end
