//
//  SelectViewController.h
//  Order
//
//  Created by cyd on 14-10-21.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "HelpOrderController.h"
#import "SelectListModel.h"
#import "SelectListView.h"
@interface SelectListController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *m_selectTableView;

    //int m_iNumOfOrder;
    
    
}
//@property(nonatomic,retain)NSMutableArray *arraylocaldata;
@property NSMutableArray *arraypeoplelist;
@property NSMutableArray *arraylocaldata;

//NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6]
@end
