//
//  SecondViewController.h
//  Order
//
//  Created by cyd on 14-10-16.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdViewController1.h"
#import "ThirdViewController2.h"
#import "ThirdViewController3.h"
#import "SelectViewController.h"
#import "AppDelegate.h"
@interface SecondViewController : UIViewController<UITabBarDelegate>{
    UITableView *uitableview;
    UILabel *m_labelpeople;
    UILabel *m_labelrestaurant;
    UILabel *m_labelpackage;
}
@property NSArray *listdata;
@property NSArray *price;
@property NSString *filename;
@property NSMutableArray *muarry;
@end
