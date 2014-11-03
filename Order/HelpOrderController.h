//
//  SecondViewController.h
//  Order
//
//  Created by cyd on 14-10-16.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderPeopleController.h"
#import "OrderRestauController.h"
#import "OrderPacgeController.h"
#import "SelectListController.h"
#import "AppDelegate.h"
#import "HelpOrderModel.h"
//#import "HelpOrderView.h"
#import "HelpOrderView.h"
@interface HelpOrderController : UIViewController<UITabBarDelegate>{
    HelpOrderView *m_helporderview;
}
@property NSString *stringprice;
@end
