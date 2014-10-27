//
//  SelectViewController.h
//  Order
//
//  Created by cyd on 14-10-21.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SecondViewController.h"

@interface SelectViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *uitableview;
    
}
@property(nonatomic,retain)NSMutableArray *listdata;
@property NSMutableArray *array;

//NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6]
@end
