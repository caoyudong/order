//
//  ThirdViewController1.h
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface ThirdViewController1 : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *uitableview;
    
}
@property (nonatomic,retain)NSArray *listdata;

@end
