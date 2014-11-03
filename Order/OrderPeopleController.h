//
//  ThirdViewController1.h
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelpOrderController.h"
#import "OrderPeoView.h"
@interface OrderPeopleController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *m_orderpeopleuitableview;
    
}
@property (nonatomic,retain)NSArray *arraypeoplelistdata;

@end
